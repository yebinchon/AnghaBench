
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mdio_ops {int write; int read; int mode_support; } ;
struct cphy_ops {int mmds; } ;
struct TYPE_2__ {int prtad; struct net_device* dev; int mdio_write; int mdio_read; int mode_support; int mmds; } ;
struct cphy {TYPE_1__ mdio; struct cphy_ops const* ops; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 struct adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void cphy_init(struct cphy *phy, struct net_device *dev,
        int phy_addr, const struct cphy_ops *phy_ops,
        const struct mdio_ops *mdio_ops)
{
 struct adapter *adapter = netdev_priv(dev);
 phy->adapter = adapter;
 phy->ops = phy_ops;
 if (mdio_ops) {
  phy->mdio.prtad = phy_addr;
  phy->mdio.mmds = phy_ops->mmds;
  phy->mdio.mode_support = mdio_ops->mode_support;
  phy->mdio.mdio_read = mdio_ops->read;
  phy->mdio.mdio_write = mdio_ops->write;
 }
 phy->mdio.dev = dev;
}
