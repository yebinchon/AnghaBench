
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debug_mask; } ;
struct i40e_pf {int flags; TYPE_2__* pdev; TYPE_1__ hw; int state; } ;
struct TYPE_4__ {int dev; } ;


 int I40E_DEBUG_FD ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int __I40E_FD_SB_AUTO_DISABLED ;
 int dev_info (int *,char*) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void i40e_reenable_fdir_sb(struct i40e_pf *pf)
{
 if (test_and_clear_bit(__I40E_FD_SB_AUTO_DISABLED, pf->state))
  if ((pf->flags & I40E_FLAG_FD_SB_ENABLED) &&
      (I40E_DEBUG_FD & pf->hw.debug_mask))
   dev_info(&pf->pdev->dev, "FD Sideband/ntuple is being enabled since we have space in the table now\n");
}
