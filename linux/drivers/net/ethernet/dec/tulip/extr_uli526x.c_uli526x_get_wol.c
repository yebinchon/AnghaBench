
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; scalar_t__ wolopts; } ;


 int WAKE_MAGIC ;
 int WAKE_PHY ;

__attribute__((used)) static void uli526x_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 wol->supported = WAKE_PHY | WAKE_MAGIC;
 wol->wolopts = 0;
}
