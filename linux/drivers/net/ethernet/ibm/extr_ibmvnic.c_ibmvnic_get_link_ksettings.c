
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmvnic_adapter {int duplex; int speed; } ;
struct TYPE_2__ {int autoneg; scalar_t__ phy_address; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_ENABLE ;
 int DUPLEX_UNKNOWN ;
 int PORT_FIBRE ;
 int SPEED_UNKNOWN ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int send_query_phys_parms (struct ibmvnic_adapter*) ;

__attribute__((used)) static int ibmvnic_get_link_ksettings(struct net_device *netdev,
          struct ethtool_link_ksettings *cmd)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int rc;

 rc = send_query_phys_parms(adapter);
 if (rc) {
  adapter->speed = SPEED_UNKNOWN;
  adapter->duplex = DUPLEX_UNKNOWN;
 }
 cmd->base.speed = adapter->speed;
 cmd->base.duplex = adapter->duplex;
 cmd->base.port = PORT_FIBRE;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_ENABLE;

 return 0;
}
