
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct nicpf {int* cpi_base; int* rssi_base; int pdev; int * vf_lmac_map; struct hw_info* hw; } ;
struct hw_info {size_t chans_per_lmac; size_t chans_per_bgx; size_t rss_ind_tbl_size; } ;
struct cpi_cfg_msg {size_t vf_id; scalar_t__ cpi_alg; int rq_cnt; } ;


 scalar_t__ CPI_ALG_DIFF ;
 scalar_t__ CPI_ALG_NONE ;
 scalar_t__ CPI_ALG_VLAN ;
 scalar_t__ CPI_ALG_VLAN16 ;
 size_t NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 size_t NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 size_t NIC_MAX_CPI_PER_LMAC ;
 size_t NIC_PF_CHAN_0_255_RX_BP_CFG ;
 size_t NIC_PF_CHAN_0_255_RX_CFG ;
 int NIC_PF_CPI_0_2047_CFG ;
 int NIC_PF_MPI_0_2047_CFG ;
 int NIC_PF_RSSI_0_4097_RQ ;
 int nic_reg_write (struct nicpf*,int,size_t) ;
 scalar_t__ pass1_silicon (int ) ;

__attribute__((used)) static void nic_config_cpi(struct nicpf *nic, struct cpi_cfg_msg *cfg)
{
 struct hw_info *hw = nic->hw;
 u32 vnic, bgx, lmac, chan;
 u32 padd, cpi_count = 0;
 u64 cpi_base, cpi, rssi_base, rssi;
 u8 qset, rq_idx = 0;

 vnic = cfg->vf_id;
 bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vnic]);
 lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vnic]);

 chan = (lmac * hw->chans_per_lmac) + (bgx * hw->chans_per_bgx);
 cpi_base = vnic * NIC_MAX_CPI_PER_LMAC;
 rssi_base = vnic * hw->rss_ind_tbl_size;


 nic_reg_write(nic, NIC_PF_CHAN_0_255_RX_BP_CFG | (chan << 3),
        (1ull << 63) | (vnic << 0));
 nic_reg_write(nic, NIC_PF_CHAN_0_255_RX_CFG | (chan << 3),
        ((u64)cfg->cpi_alg << 62) | (cpi_base << 48));

 if (cfg->cpi_alg == CPI_ALG_NONE)
  cpi_count = 1;
 else if (cfg->cpi_alg == CPI_ALG_VLAN)
  cpi_count = 8;
 else if (cfg->cpi_alg == CPI_ALG_VLAN16)
  cpi_count = 16;
 else if (cfg->cpi_alg == CPI_ALG_DIFF)
  cpi_count = NIC_MAX_CPI_PER_LMAC;


 qset = cfg->vf_id;
 rssi = rssi_base;
 for (; rssi < (rssi_base + cfg->rq_cnt); rssi++) {
  nic_reg_write(nic, NIC_PF_RSSI_0_4097_RQ | (rssi << 3),
         (qset << 3) | rq_idx);
  rq_idx++;
 }

 rssi = 0;
 cpi = cpi_base;
 for (; cpi < (cpi_base + cpi_count); cpi++) {

  if (cfg->cpi_alg != CPI_ALG_DIFF)
   padd = cpi % cpi_count;
  else
   padd = cpi % 8;


  if (pass1_silicon(nic->pdev)) {
   nic_reg_write(nic, NIC_PF_CPI_0_2047_CFG | (cpi << 3),
          (vnic << 24) | (padd << 16) |
          (rssi_base + rssi));
  } else {

   nic_reg_write(nic, NIC_PF_CPI_0_2047_CFG | (cpi << 3),
          (padd << 16));

   nic_reg_write(nic, NIC_PF_MPI_0_2047_CFG | (cpi << 3),
          (vnic << 24) | (rssi_base + rssi));
  }

  if ((rssi + 1) >= cfg->rq_cnt)
   continue;

  if (cfg->cpi_alg == CPI_ALG_VLAN)
   rssi++;
  else if (cfg->cpi_alg == CPI_ALG_VLAN16)
   rssi = ((cpi - cpi_base) & 0xe) >> 1;
  else if (cfg->cpi_alg == CPI_ALG_DIFF)
   rssi = ((cpi - cpi_base) & 0x38) >> 3;
 }
 nic->cpi_base[cfg->vf_id] = cpi_base;
 nic->rssi_base[cfg->vf_id] = rssi_base;
}
