
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nicpf {scalar_t__ num_vf_en; int pdev; int * vf_lmac_map; int node; TYPE_1__* hw; } ;
struct TYPE_2__ {int bgx_cnt; } ;


 int MAX_LMAC_PER_BGX ;
 int NIC_HW_MAX_FRS ;
 scalar_t__ NIC_PF_LMAC_0_7_CREDIT ;
 int NIC_SET_VF_LMAC_MAP (int,int) ;
 int bgx_get_lmac_count (int ,int) ;
 unsigned int bgx_get_map (int ) ;
 int nic_reg_write (struct nicpf*,scalar_t__,int) ;
 scalar_t__ pci_sriov_get_totalvfs (int ) ;

__attribute__((used)) static void nic_set_lmac_vf_mapping(struct nicpf *nic)
{
 unsigned bgx_map = bgx_get_map(nic->node);
 int bgx, next_bgx_lmac = 0;
 int lmac, lmac_cnt = 0;
 u64 lmac_credit;

 nic->num_vf_en = 0;

 for (bgx = 0; bgx < nic->hw->bgx_cnt; bgx++) {
  if (!(bgx_map & (1 << bgx)))
   continue;
  lmac_cnt = bgx_get_lmac_count(nic->node, bgx);
  for (lmac = 0; lmac < lmac_cnt; lmac++)
   nic->vf_lmac_map[next_bgx_lmac++] =
      NIC_SET_VF_LMAC_MAP(bgx, lmac);
  nic->num_vf_en += lmac_cnt;


  lmac_credit = (1ull << 1);
  lmac_credit |= (0x1ff << 2);

  lmac_credit |= (((((48 * 1024) / lmac_cnt) -
    NIC_HW_MAX_FRS) / 16) << 12);
  lmac = bgx * MAX_LMAC_PER_BGX;
  for (; lmac < lmac_cnt + (bgx * MAX_LMAC_PER_BGX); lmac++)
   nic_reg_write(nic,
          NIC_PF_LMAC_0_7_CREDIT + (lmac * 8),
          lmac_credit);




  if (nic->num_vf_en >= pci_sriov_get_totalvfs(nic->pdev)) {
   nic->num_vf_en = pci_sriov_get_totalvfs(nic->pdev);
   break;
  }
 }
}
