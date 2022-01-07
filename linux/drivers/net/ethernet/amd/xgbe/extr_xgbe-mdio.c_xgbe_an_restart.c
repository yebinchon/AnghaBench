
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* an_pre ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int an_mode; TYPE_2__ phy_if; } ;






 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_an37_restart (struct xgbe_prv_data*) ;
 int xgbe_an73_restart (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_restart(struct xgbe_prv_data *pdata)
{
 if (pdata->phy_if.phy_impl.an_pre)
  pdata->phy_if.phy_impl.an_pre(pdata);

 switch (pdata->an_mode) {
 case 129:
 case 128:
  xgbe_an73_restart(pdata);
  break;
 case 131:
 case 130:
  xgbe_an37_restart(pdata);
  break;
 default:
  break;
 }
}
