
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* def; int speed; } ;
struct gem {int lstate; int timer_ticks; int dev; TYPE_3__ phy_mii; int last_forced_speed; } ;
struct TYPE_7__ {TYPE_1__* ops; int magic_aneg; } ;
struct TYPE_6__ {int (* setup_forced ) (TYPE_3__*,int ,int ) ;} ;


 int DUPLEX_HALF ;
 int SPEED_10 ;
 int SPEED_100 ;
 int link ;

 int link_force_ok ;


 int netif_info (struct gem*,int ,int ,char*) ;
 int stub1 (TYPE_3__*,int ,int ) ;
 int stub2 (TYPE_3__*,int ,int ) ;
 int stub3 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int gem_mdio_link_not_up(struct gem *gp)
{
 switch (gp->lstate) {
 case 129:
  netif_info(gp, link, gp->dev,
      "Autoneg failed again, keeping forced mode\n");
  gp->phy_mii.def->ops->setup_forced(&gp->phy_mii,
   gp->last_forced_speed, DUPLEX_HALF);
  gp->timer_ticks = 5;
  gp->lstate = link_force_ok;
  return 0;
 case 130:




  if (gp->phy_mii.def->magic_aneg)
   return 1;
  netif_info(gp, link, gp->dev, "switching to forced 100bt\n");

  gp->phy_mii.def->ops->setup_forced(&gp->phy_mii, SPEED_100,
   DUPLEX_HALF);
  gp->timer_ticks = 5;
  gp->lstate = 128;
  return 0;
 case 128:




  if (gp->phy_mii.speed == SPEED_100) {
   gp->phy_mii.def->ops->setup_forced(&gp->phy_mii, SPEED_10,
    DUPLEX_HALF);
   gp->timer_ticks = 5;
   netif_info(gp, link, gp->dev,
       "switching to forced 10bt\n");
   return 0;
  } else
   return 1;
 default:
  return 0;
 }
}
