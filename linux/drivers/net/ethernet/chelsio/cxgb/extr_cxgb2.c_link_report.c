
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; scalar_t__ duplex; } ;
struct port_info {TYPE_1__ link_config; int dev; } ;


 scalar_t__ DUPLEX_FULL ;



 int netdev_info (int ,char*,...) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static void link_report(struct port_info *p)
{
 if (!netif_carrier_ok(p->dev))
  netdev_info(p->dev, "link down\n");
 else {
  const char *s = "10Mbps";

  switch (p->link_config.speed) {
   case 128: s = "10Gbps"; break;
   case 129: s = "1000Mbps"; break;
   case 130: s = "100Mbps"; break;
  }

  netdev_info(p->dev, "link up, %s, %s-duplex\n",
       s, p->link_config.duplex == DUPLEX_FULL
       ? "full" : "half");
 }
}
