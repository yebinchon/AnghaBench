
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int line_speed; } ;
struct bnx2x {TYPE_1__ link_vars; int link_params; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int DP (int,char*) ;
 int EAGAIN ;




 int LED_MODE_FRONT_PANEL_OFF ;
 int LED_MODE_ON ;
 int LED_MODE_OPER ;
 int SPEED_1000 ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_is_nvm_accessible (struct bnx2x*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_set_led (int *,TYPE_1__*,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_phys_id(struct net_device *dev,
        enum ethtool_phys_id_state state)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (!bnx2x_is_nvm_accessible(bp)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot access eeprom when the interface is down\n");
  return -EAGAIN;
 }

 switch (state) {
 case 131:
  return 1;

 case 128:
  bnx2x_acquire_phy_lock(bp);
  bnx2x_set_led(&bp->link_params, &bp->link_vars,
         LED_MODE_ON, SPEED_1000);
  bnx2x_release_phy_lock(bp);
  break;

 case 129:
  bnx2x_acquire_phy_lock(bp);
  bnx2x_set_led(&bp->link_params, &bp->link_vars,
         LED_MODE_FRONT_PANEL_OFF, 0);
  bnx2x_release_phy_lock(bp);
  break;

 case 130:
  bnx2x_acquire_phy_lock(bp);
  bnx2x_set_led(&bp->link_params, &bp->link_vars,
         LED_MODE_OPER,
         bp->link_vars.line_speed);
  bnx2x_release_phy_lock(bp);
 }

 return 0;
}
