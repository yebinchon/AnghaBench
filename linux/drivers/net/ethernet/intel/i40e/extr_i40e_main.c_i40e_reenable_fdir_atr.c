
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
 int I40E_FILTER_PCTYPE_NONF_IPV4_TCP ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_L3_DST_MASK ;
 int I40E_L3_SRC_MASK ;
 int I40E_L4_DST_MASK ;
 int I40E_L4_SRC_MASK ;
 int __I40E_FD_ATR_AUTO_DISABLED ;
 int dev_info (int *,char*) ;
 int i40e_write_fd_input_set (struct i40e_pf*,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void i40e_reenable_fdir_atr(struct i40e_pf *pf)
{
 if (test_and_clear_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state)) {





  i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_TCP,
     I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
     I40E_L4_SRC_MASK | I40E_L4_DST_MASK);

  if ((pf->flags & I40E_FLAG_FD_ATR_ENABLED) &&
      (I40E_DEBUG_FD & pf->hw.debug_mask))
   dev_info(&pf->pdev->dev, "ATR is being enabled since we have space in the table and there are no conflicting ntuple rules\n");
 }
}
