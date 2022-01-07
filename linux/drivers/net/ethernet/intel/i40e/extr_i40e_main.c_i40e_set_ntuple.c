
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debug_mask; } ;
struct i40e_pf {int flags; scalar_t__ num_fdsb_msix; TYPE_2__* pdev; TYPE_1__ hw; int state; scalar_t__ fd_atr_cnt; scalar_t__ fd_add_err; int num_cloud_filters; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {int dev; } ;


 int I40E_DEBUG_FD ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_FD_SB_INACTIVE ;
 int NETIF_F_NTUPLE ;
 int __I40E_FD_ATR_AUTO_DISABLED ;
 int __I40E_FD_SB_AUTO_DISABLED ;
 int clear_bit (int ,int ) ;
 int dev_info (int *,char*) ;
 int i40e_fdir_filter_exit (struct i40e_pf*) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features)
{
 bool need_reset = 0;




 if (features & NETIF_F_NTUPLE) {

  if (!(pf->flags & I40E_FLAG_FD_SB_ENABLED))
   need_reset = 1;



  if (pf->num_fdsb_msix > 0 && !pf->num_cloud_filters) {
   pf->flags |= I40E_FLAG_FD_SB_ENABLED;
   pf->flags &= ~I40E_FLAG_FD_SB_INACTIVE;
  }
 } else {

  if (pf->flags & I40E_FLAG_FD_SB_ENABLED) {
   need_reset = 1;
   i40e_fdir_filter_exit(pf);
  }
  pf->flags &= ~I40E_FLAG_FD_SB_ENABLED;
  clear_bit(__I40E_FD_SB_AUTO_DISABLED, pf->state);
  pf->flags |= I40E_FLAG_FD_SB_INACTIVE;


  pf->fd_add_err = 0;
  pf->fd_atr_cnt = 0;

  if (test_and_clear_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state))
   if ((pf->flags & I40E_FLAG_FD_ATR_ENABLED) &&
       (I40E_DEBUG_FD & pf->hw.debug_mask))
    dev_info(&pf->pdev->dev, "ATR re-enabled.\n");
 }
 return need_reset;
}
