
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port; int duplex; int speed; int autoneg; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {int duplex; int speed; int autoneg; int address; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;
struct net_device {int dummy; } ;


 int PORT_NONE ;
 int XGBE_LM_COPY (struct ethtool_link_ksettings*,int ,struct ethtool_link_ksettings*,int ) ;
 int advertising ;
 int lp_advertising ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int supported ;

__attribute__((used)) static int xgbe_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct ethtool_link_ksettings *lks = &pdata->phy.lks;

 cmd->base.phy_address = pdata->phy.address;

 cmd->base.autoneg = pdata->phy.autoneg;
 cmd->base.speed = pdata->phy.speed;
 cmd->base.duplex = pdata->phy.duplex;

 cmd->base.port = PORT_NONE;

 XGBE_LM_COPY(cmd, supported, lks, supported);
 XGBE_LM_COPY(cmd, advertising, lks, advertising);
 XGBE_LM_COPY(cmd, lp_advertising, lks, lp_advertising);

 return 0;
}
