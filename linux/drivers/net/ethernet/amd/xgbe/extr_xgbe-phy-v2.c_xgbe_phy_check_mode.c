
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autoneg; int speed; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 scalar_t__ AUTONEG_ENABLE ;
 int xgbe_phy_get_mode (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static bool xgbe_phy_check_mode(struct xgbe_prv_data *pdata,
    enum xgbe_mode mode, bool advert)
{
 if (pdata->phy.autoneg == AUTONEG_ENABLE) {
  return advert;
 } else {
  enum xgbe_mode cur_mode;

  cur_mode = xgbe_phy_get_mode(pdata, pdata->phy.speed);
  if (cur_mode == mode)
   return 1;
 }

 return 0;
}
