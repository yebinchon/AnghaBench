
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active_speed; scalar_t__ active_duplex; int active_flowctrl; } ;
struct tg3 {int phy_flags; int dev; scalar_t__ link_up; scalar_t__ setlpicnt; TYPE_1__ link_config; } ;


 scalar_t__ DUPLEX_FULL ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int TG3_PHYFLG_EEE_CAP ;
 int link ;
 int netdev_info (int ,char*,...) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_info (struct tg3*,int ,int ,char*) ;
 scalar_t__ netif_msg_link (struct tg3*) ;
 int tg3_ump_link_report (struct tg3*) ;

__attribute__((used)) static void tg3_link_report(struct tg3 *tp)
{
 if (!netif_carrier_ok(tp->dev)) {
  netif_info(tp, link, tp->dev, "Link is down\n");
  tg3_ump_link_report(tp);
 } else if (netif_msg_link(tp)) {
  netdev_info(tp->dev, "Link is up at %d Mbps, %s duplex\n",
       (tp->link_config.active_speed == SPEED_1000 ?
        1000 :
        (tp->link_config.active_speed == SPEED_100 ?
         100 : 10)),
       (tp->link_config.active_duplex == DUPLEX_FULL ?
        "full" : "half"));

  netdev_info(tp->dev, "Flow control is %s for TX and %s for RX\n",
       (tp->link_config.active_flowctrl & FLOW_CTRL_TX) ?
       "on" : "off",
       (tp->link_config.active_flowctrl & FLOW_CTRL_RX) ?
       "on" : "off");

  if (tp->phy_flags & TG3_PHYFLG_EEE_CAP)
   netdev_info(tp->dev, "EEE is %s\n",
        tp->setlpicnt ? "enabled" : "disabled");

  tg3_ump_link_report(tp);
 }

 tp->link_up = netif_carrier_ok(tp->dev);
}
