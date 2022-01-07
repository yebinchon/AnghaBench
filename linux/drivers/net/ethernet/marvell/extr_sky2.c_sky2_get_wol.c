
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int wol; int hw; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 struct sky2_port* netdev_priv (struct net_device*) ;
 int sky2_wol_supported (int ) ;

__attribute__((used)) static void sky2_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 const struct sky2_port *sky2 = netdev_priv(dev);

 wol->supported = sky2_wol_supported(sky2->hw);
 wol->wolopts = sky2->wol;
}
