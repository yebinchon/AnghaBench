
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct mvneta_port {int phylink; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int device_set_wakeup_enable (int *,int) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_wol (int ,struct ethtool_wolinfo*) ;

__attribute__((used)) static int mvneta_ethtool_set_wol(struct net_device *dev,
      struct ethtool_wolinfo *wol)
{
 struct mvneta_port *pp = netdev_priv(dev);
 int ret;

 ret = phylink_ethtool_set_wol(pp->phylink, wol);
 if (!ret)
  device_set_wakeup_enable(&dev->dev, !!wol->wolopts);

 return ret;
}
