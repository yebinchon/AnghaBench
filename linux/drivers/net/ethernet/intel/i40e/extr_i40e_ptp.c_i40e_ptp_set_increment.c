
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct i40e_link_status {int link_speed; } ;
struct TYPE_3__ {struct i40e_link_status link_info; } ;
struct i40e_hw {TYPE_1__ phy; } ;
struct i40e_pf {int ptp_adj_mult; TYPE_2__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int dev; } ;






 int I40E_PRTTSYN_INC_H ;
 int I40E_PRTTSYN_INC_L ;
 int I40E_PTP_10GB_INCVAL_MULT ;
 int I40E_PTP_1GB_INCVAL_MULT ;
 int I40E_PTP_40GB_INCVAL ;
 int WRITE_ONCE (int ,int) ;
 int dev_warn (int *,char*) ;
 int i40e_aq_get_link_info (struct i40e_hw*,int,int *,int *) ;
 int smp_mb () ;
 int wr32 (struct i40e_hw*,int ,int) ;

void i40e_ptp_set_increment(struct i40e_pf *pf)
{
 struct i40e_link_status *hw_link_info;
 struct i40e_hw *hw = &pf->hw;
 u64 incval;
 u32 mult;

 hw_link_info = &hw->phy.link_info;

 i40e_aq_get_link_info(&pf->hw, 1, ((void*)0), ((void*)0));

 switch (hw_link_info->link_speed) {
 case 130:
  mult = I40E_PTP_10GB_INCVAL_MULT;
  break;
 case 129:
  mult = I40E_PTP_1GB_INCVAL_MULT;
  break;
 case 131:
 {
  static int warn_once;

  if (!warn_once) {
   dev_warn(&pf->pdev->dev,
     "1588 functionality is not supported at 100 Mbps. Stopping the PHC.\n");
   warn_once++;
  }
  mult = 0;
  break;
 }
 case 128:
 default:
  mult = 1;
  break;
 }




 incval = I40E_PTP_40GB_INCVAL * mult;





 wr32(hw, I40E_PRTTSYN_INC_L, incval & 0xFFFFFFFF);
 wr32(hw, I40E_PRTTSYN_INC_H, incval >> 32);


 WRITE_ONCE(pf->ptp_adj_mult, mult);
 smp_mb();
}
