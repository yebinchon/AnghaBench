
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {scalar_t__ redrv_if; int redrv_model; int redrv_lane; int redrv; } ;


 scalar_t__ XGBE_PHY_REDRV_IF_MAX ;



__attribute__((used)) static bool xgbe_phy_redrv_error(struct xgbe_phy_data *phy_data)
{
 if (!phy_data->redrv)
  return 0;

 if (phy_data->redrv_if >= XGBE_PHY_REDRV_IF_MAX)
  return 1;

 switch (phy_data->redrv_model) {
 case 129:
  if (phy_data->redrv_lane > 3)
   return 1;
  break;
 case 128:
  if (phy_data->redrv_lane > 1)
   return 1;
  break;
 default:
  return 1;
 }

 return 0;
}
