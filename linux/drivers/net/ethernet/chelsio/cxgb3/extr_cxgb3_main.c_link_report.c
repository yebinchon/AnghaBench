
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; scalar_t__ duplex; } ;
struct port_info {TYPE_1__ link_config; } ;
struct net_device {int dummy; } ;


 scalar_t__ DUPLEX_FULL ;



 int netdev_info (struct net_device*,char*,...) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static void link_report(struct net_device *dev)
{
 if (!netif_carrier_ok(dev))
  netdev_info(dev, "link down\n");
 else {
  const char *s = "10Mbps";
  const struct port_info *p = netdev_priv(dev);

  switch (p->link_config.speed) {
  case 128:
   s = "10Gbps";
   break;
  case 129:
   s = "1000Mbps";
   break;
  case 130:
   s = "100Mbps";
   break;
  }

  netdev_info(dev, "link up, %s, %s-duplex\n",
       s, p->link_config.duplex == DUPLEX_FULL
       ? "full" : "half");
 }
}
