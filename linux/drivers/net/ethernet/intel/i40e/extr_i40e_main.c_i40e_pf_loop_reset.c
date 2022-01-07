
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_pf {int pfr_count; TYPE_1__* pdev; struct i40e_hw hw; } ;
typedef int i40e_status ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int i40e_pf_reset (struct i40e_hw*) ;
 int msleep (unsigned short const) ;

__attribute__((used)) static i40e_status i40e_pf_loop_reset(struct i40e_pf *pf)
{
 const unsigned short MAX_CNT = 1000;
 const unsigned short MSECS = 10;
 struct i40e_hw *hw = &pf->hw;
 i40e_status ret;
 int cnt;

 for (cnt = 0; cnt < MAX_CNT; ++cnt) {
  ret = i40e_pf_reset(hw);
  if (!ret)
   break;
  msleep(MSECS);
 }

 if (cnt == MAX_CNT) {
  dev_info(&pf->pdev->dev, "PF reset failed: %d\n", ret);
  return ret;
 }

 pf->pfr_count++;
 return ret;
}
