
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbe_slave {int port_num; int * phy; } ;
struct gbe_priv {int ale; } ;
struct gbe_intf {TYPE_1__* ndev; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;
struct TYPE_2__ {int broadcast; } ;


 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_DISABLE ;
 int IS_SS_ID_2U (struct gbe_priv*) ;
 int cpsw_ale_control_set (int ,int,int ,int ) ;
 int cpsw_ale_del_mcast (int ,int ,int,int ,int ) ;
 int gbe_port_reset (struct gbe_slave*) ;
 int gbe_sgmii_rtreset (struct gbe_priv*,struct gbe_slave*,int) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;

__attribute__((used)) static void gbe_slave_stop(struct gbe_intf *intf)
{
 struct gbe_priv *gbe_dev = intf->gbe_dev;
 struct gbe_slave *slave = intf->slave;

 if (!IS_SS_ID_2U(gbe_dev))
  gbe_sgmii_rtreset(gbe_dev, slave, 1);
 gbe_port_reset(slave);

 cpsw_ale_control_set(gbe_dev->ale, slave->port_num,
        ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);
 cpsw_ale_del_mcast(gbe_dev->ale, intf->ndev->broadcast,
      1 << slave->port_num, 0, 0);

 if (!slave->phy)
  return;

 phy_stop(slave->phy);
 phy_disconnect(slave->phy);
 slave->phy = ((void*)0);
}
