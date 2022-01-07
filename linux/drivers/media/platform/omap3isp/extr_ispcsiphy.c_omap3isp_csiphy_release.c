
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isp_pipeline {int external; } ;
struct isp_csiphy {int mutex; int * entity; int vdd; TYPE_3__* isp; } ;
struct TYPE_4__ {int phy_layer; } ;
struct TYPE_5__ {TYPE_1__ ccp2; } ;
struct isp_bus_cfg {TYPE_2__ bus; int interface; } ;
struct TYPE_6__ {scalar_t__ revision; } ;


 int ISPCSI2_PHY_CFG_PWR_CMD_OFF ;
 scalar_t__ ISP_REVISION_15_0 ;
 int csiphy_power_autoswitch_enable (struct isp_csiphy*,int) ;
 int csiphy_routing_cfg (struct isp_csiphy*,int ,int,int ) ;
 int csiphy_set_power (struct isp_csiphy*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (int ) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 struct isp_bus_cfg* v4l2_subdev_to_bus_cfg (int ) ;

void omap3isp_csiphy_release(struct isp_csiphy *phy)
{
 mutex_lock(&phy->mutex);
 if (phy->entity) {
  struct isp_pipeline *pipe = to_isp_pipeline(phy->entity);
  struct isp_bus_cfg *buscfg =
   v4l2_subdev_to_bus_cfg(pipe->external);

  csiphy_routing_cfg(phy, buscfg->interface, 0,
       buscfg->bus.ccp2.phy_layer);
  if (phy->isp->revision == ISP_REVISION_15_0) {
   csiphy_power_autoswitch_enable(phy, 0);
   csiphy_set_power(phy, ISPCSI2_PHY_CFG_PWR_CMD_OFF);
  }
  regulator_disable(phy->vdd);
  phy->entity = ((void*)0);
 }
 mutex_unlock(&phy->mutex);
}
