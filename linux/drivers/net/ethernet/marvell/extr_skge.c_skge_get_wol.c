
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int wol; int hw; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 struct skge_port* netdev_priv (struct net_device*) ;
 int wol_supported (int ) ;

__attribute__((used)) static void skge_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct skge_port *skge = netdev_priv(dev);

 wol->supported = wol_supported(skge->hw);
 wol->wolopts = skge->wol;
}
