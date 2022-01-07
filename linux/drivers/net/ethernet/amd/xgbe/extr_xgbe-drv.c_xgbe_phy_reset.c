
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* phy_reset ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int phy_link; TYPE_1__ phy_if; int phy_speed; } ;


 int SPEED_UNKNOWN ;
 int stub1 (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_reset(struct xgbe_prv_data *pdata)
{
 pdata->phy_link = -1;
 pdata->phy_speed = SPEED_UNKNOWN;

 return pdata->phy_if.phy_reset(pdata);
}
