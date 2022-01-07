
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct gelic_card {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; int speed; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 int GELIC_LV1_ETHER_AUTO_NEG ;
 int GELIC_LV1_ETHER_FULL_DUPLEX ;
 int GELIC_LV1_ETHER_SPEED_10 ;
 int GELIC_LV1_ETHER_SPEED_100 ;
 int GELIC_LV1_ETHER_SPEED_1000 ;



 int gelic_card_set_link_mode (struct gelic_card*,int ) ;
 struct gelic_card* netdev_card (struct net_device*) ;
 int pr_info (char*) ;

__attribute__((used)) static int
gelic_ether_set_link_ksettings(struct net_device *netdev,
          const struct ethtool_link_ksettings *cmd)
{
 struct gelic_card *card = netdev_card(netdev);
 u64 mode;
 int ret;

 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  mode = GELIC_LV1_ETHER_AUTO_NEG;
 } else {
  switch (cmd->base.speed) {
  case 130:
   mode = GELIC_LV1_ETHER_SPEED_10;
   break;
  case 129:
   mode = GELIC_LV1_ETHER_SPEED_100;
   break;
  case 128:
   mode = GELIC_LV1_ETHER_SPEED_1000;
   break;
  default:
   return -EINVAL;
  }
  if (cmd->base.duplex == DUPLEX_FULL) {
   mode |= GELIC_LV1_ETHER_FULL_DUPLEX;
  } else if (cmd->base.speed == 128) {
   pr_info("1000 half duplex is not supported.\n");
   return -EINVAL;
  }
 }

 ret = gelic_card_set_link_mode(card, mode);

 if (ret)
  return ret;

 return 0;
}
