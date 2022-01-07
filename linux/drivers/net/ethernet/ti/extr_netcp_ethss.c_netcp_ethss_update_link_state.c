
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gbe_slave {int slave_num; int link_state; int open; } ;
struct gbe_priv {int dummy; } ;


 int SGMII_BASE (struct gbe_priv*,int) ;
 scalar_t__ SLAVE_LINK_IS_RGMII (struct gbe_slave*) ;
 scalar_t__ SLAVE_LINK_IS_SGMII (struct gbe_slave*) ;
 int atomic_xchg (int *,int) ;
 int gbe_phy_link_status (struct gbe_slave*) ;
 int netcp_2u_rgmii_get_port_link (struct gbe_priv*,int*) ;
 int netcp_ethss_link_state_action (struct gbe_priv*,struct net_device*,struct gbe_slave*,int) ;
 int netcp_sgmii_get_port_link (int ,int) ;

__attribute__((used)) static void netcp_ethss_update_link_state(struct gbe_priv *gbe_dev,
       struct gbe_slave *slave,
       struct net_device *ndev)
{
 bool sw_link_state = 1, phy_link_state;
 int sp = slave->slave_num, link_state;

 if (!slave->open)
  return;

 if (SLAVE_LINK_IS_RGMII(slave))
  netcp_2u_rgmii_get_port_link(gbe_dev,
          &sw_link_state);
 if (SLAVE_LINK_IS_SGMII(slave))
  sw_link_state =
  netcp_sgmii_get_port_link(SGMII_BASE(gbe_dev, sp), sp);

 phy_link_state = gbe_phy_link_status(slave);
 link_state = phy_link_state & sw_link_state;

 if (atomic_xchg(&slave->link_state, link_state) != link_state)
  netcp_ethss_link_state_action(gbe_dev, ndev, slave,
           link_state);
}
