
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; size_t fc; } ;
struct port_info {TYPE_1__ link_cfg; } ;
struct net_device {int name; } ;


 int netdev_info (struct net_device*,char*,...) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int pr_info (char*,int ,int) ;

__attribute__((used)) static void link_report(struct net_device *dev)
{
 if (!netif_carrier_ok(dev))
  netdev_info(dev, "link down\n");
 else {
  static const char *fc[] = { "no", "Rx", "Tx", "Tx/Rx" };

  const char *s;
  const struct port_info *p = netdev_priv(dev);

  switch (p->link_cfg.speed) {
  case 100:
   s = "100Mbps";
   break;
  case 1000:
   s = "1Gbps";
   break;
  case 10000:
   s = "10Gbps";
   break;
  case 25000:
   s = "25Gbps";
   break;
  case 40000:
   s = "40Gbps";
   break;
  case 50000:
   s = "50Gbps";
   break;
  case 100000:
   s = "100Gbps";
   break;
  default:
   pr_info("%s: unsupported speed: %d\n",
    dev->name, p->link_cfg.speed);
   return;
  }

  netdev_info(dev, "link up, %s, full-duplex, %s PAUSE\n", s,
       fc[p->link_cfg.fc]);
 }
}
