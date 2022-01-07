
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_entity {int dummy; } ;
struct isp_csiphy {int mutex; struct media_entity* entity; int * vdd; TYPE_1__* isp; int csi2; } ;
struct TYPE_2__ {scalar_t__ revision; int dev; } ;


 int ENODEV ;
 int ISPCSI2_PHY_CFG_PWR_CMD_ON ;
 scalar_t__ ISP_REVISION_15_0 ;
 int csiphy_power_autoswitch_enable (struct isp_csiphy*,int) ;
 int csiphy_set_power (struct isp_csiphy*,int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap3isp_csi2_reset (int ) ;
 int omap3isp_csiphy_config (struct isp_csiphy*) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;

int omap3isp_csiphy_acquire(struct isp_csiphy *phy, struct media_entity *entity)
{
 int rval;

 if (phy->vdd == ((void*)0)) {
  dev_err(phy->isp->dev,
   "Power regulator for CSI PHY not available\n");
  return -ENODEV;
 }

 mutex_lock(&phy->mutex);

 rval = regulator_enable(phy->vdd);
 if (rval < 0)
  goto done;

 rval = omap3isp_csi2_reset(phy->csi2);
 if (rval < 0)
  goto done;

 phy->entity = entity;

 rval = omap3isp_csiphy_config(phy);
 if (rval < 0)
  goto done;

 if (phy->isp->revision == ISP_REVISION_15_0) {
  rval = csiphy_set_power(phy, ISPCSI2_PHY_CFG_PWR_CMD_ON);
  if (rval) {
   regulator_disable(phy->vdd);
   goto done;
  }

  csiphy_power_autoswitch_enable(phy, 1);
 }
done:
 if (rval < 0)
  phy->entity = ((void*)0);

 mutex_unlock(&phy->mutex);
 return rval;
}
