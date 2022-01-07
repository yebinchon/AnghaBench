
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicpf {int pdev; int node; int * vf_lmac_map; } ;


 scalar_t__ ETH_FCS_LEN ;
 int MAX_LMAC_PER_BGX ;
 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_HW_MAX_FRS ;
 int NIC_HW_MIN_FRS ;
 scalar_t__ NIC_PF_LMAC_0_7_CFG2 ;
 scalar_t__ NIC_PF_LMAC_0_7_CREDIT ;
 scalar_t__ VLAN_ETH_HLEN ;
 int bgx_get_lmac_count (int ,int) ;
 int nic_reg_read (struct nicpf*,scalar_t__) ;
 int nic_reg_write (struct nicpf*,scalar_t__,int) ;
 int pass1_silicon (int ) ;

__attribute__((used)) static int nic_update_hw_frs(struct nicpf *nic, int new_frs, int vf)
{
 int bgx, lmac, lmac_cnt;
 u64 lmac_credits;

 if ((new_frs > NIC_HW_MAX_FRS) || (new_frs < NIC_HW_MIN_FRS))
  return 1;

 bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
 lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
 lmac += bgx * MAX_LMAC_PER_BGX;

 new_frs += VLAN_ETH_HLEN + ETH_FCS_LEN + 4;


 lmac_cnt = bgx_get_lmac_count(nic->node, bgx);
 lmac_credits = nic_reg_read(nic, NIC_PF_LMAC_0_7_CREDIT + (lmac * 8));
 lmac_credits &= ~(0xFFFFFULL << 12);
 lmac_credits |= (((((48 * 1024) / lmac_cnt) - new_frs) / 16) << 12);
 nic_reg_write(nic, NIC_PF_LMAC_0_7_CREDIT + (lmac * 8), lmac_credits);




 if (!pass1_silicon(nic->pdev))
  nic_reg_write(nic,
         NIC_PF_LMAC_0_7_CFG2 + (lmac * 8), new_frs);
 return 0;
}
