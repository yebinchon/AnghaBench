
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct nic {TYPE_1__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int e100_configure ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 int mdio_write (struct net_device*,int ,int ,int ) ;
 int mii_ethtool_set_link_ksettings (TYPE_1__*,struct ethtool_link_ksettings const*) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_set_link_ksettings(struct net_device *netdev,
       const struct ethtool_link_ksettings *cmd)
{
 struct nic *nic = netdev_priv(netdev);
 int err;

 mdio_write(netdev, nic->mii.phy_id, MII_BMCR, BMCR_RESET);
 err = mii_ethtool_set_link_ksettings(&nic->mii, cmd);
 e100_exec_cb(nic, ((void*)0), e100_configure);

 return err;
}
