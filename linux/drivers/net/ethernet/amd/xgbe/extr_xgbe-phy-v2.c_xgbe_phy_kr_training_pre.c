
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ debugfs_an_cdr_track_early; } ;


 int xgbe_phy_cdr_track (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_kr_training_pre(struct xgbe_prv_data *pdata)
{
 if (pdata->debugfs_an_cdr_track_early)
  xgbe_phy_cdr_track(pdata);
}
