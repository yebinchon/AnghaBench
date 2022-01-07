
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_loopback {size_t vf_id; int enable; } ;
struct nicpf {size_t num_vf_en; int node; int * vf_lmac_map; } ;


 int BIT_ULL (int) ;
 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_PF_CQ_AVG_CFG ;
 int NIC_PF_RRM_AVG_CFG ;
 int bgx_lmac_internal_loopback (int ,int,int,int ) ;
 int nic_reg_write (struct nicpf*,int ,int) ;

__attribute__((used)) static int nic_config_loopback(struct nicpf *nic, struct set_loopback *lbk)
{
 int bgx_idx, lmac_idx;

 if (lbk->vf_id >= nic->num_vf_en)
  return -1;

 bgx_idx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lbk->vf_id]);
 lmac_idx = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lbk->vf_id]);

 bgx_lmac_internal_loopback(nic->node, bgx_idx, lmac_idx, lbk->enable);





 nic_reg_write(nic, NIC_PF_CQ_AVG_CFG,
        (BIT_ULL(20) | 0x2ull << 14 | 0x1));
 nic_reg_write(nic, NIC_PF_RRM_AVG_CFG,
        (BIT_ULL(20) | 0x3ull << 14 | 0x1));

 return 0;
}
