
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_pf {int pfr_count; int state; TYPE_1__* pdev; struct i40e_hw hw; } ;
typedef int i40e_status ;
struct TYPE_2__ {int dev; } ;


 int __I40E_RESET_FAILED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_info (int *,char*,int) ;
 int i40e_pf_reset (struct i40e_hw*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int i40e_reset(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 i40e_status ret;

 ret = i40e_pf_reset(hw);
 if (ret) {
  dev_info(&pf->pdev->dev, "PF reset failed, %d\n", ret);
  set_bit(__I40E_RESET_FAILED, pf->state);
  clear_bit(__I40E_RESET_RECOVERY_PENDING, pf->state);
 } else {
  pf->pfr_count++;
 }
 return ret;
}
