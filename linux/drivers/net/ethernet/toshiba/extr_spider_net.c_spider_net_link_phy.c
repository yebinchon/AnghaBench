
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct mii_phy {int speed; int duplex; int autoneg; TYPE_2__* def; } ;
struct spider_net_card {scalar_t__ aneg_count; int medium; TYPE_3__* netdev; int aneg_timer; struct mii_phy phy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* read_link ) (struct mii_phy*) ;int (* poll_link ) (struct mii_phy*) ;int (* enable_fiber ) (struct mii_phy*,int) ;} ;





 scalar_t__ SPIDER_NET_ANEG_TIMEOUT ;
 scalar_t__ SPIDER_NET_ANEG_TIMER ;
 int SPIDER_NET_GMACINTEN ;
 int SPIDER_NET_GMACMODE ;
 int SPIDER_NET_GMACST ;
 int aneg_timer ;
 struct spider_net_card* card ;
 struct spider_net_card* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ) ;
 int pr_info (char*,int ,int,char*,char*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_setup_aneg (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;
 int stub1 (struct mii_phy*,int) ;
 int stub2 (struct mii_phy*,int) ;
 int stub3 (struct mii_phy*) ;
 int stub4 (struct mii_phy*) ;

__attribute__((used)) static void spider_net_link_phy(struct timer_list *t)
{
 struct spider_net_card *card = from_timer(card, t, aneg_timer);
 struct mii_phy *phy = &card->phy;


 if (card->aneg_count > SPIDER_NET_ANEG_TIMEOUT) {

  pr_debug("%s: link is down trying to bring it up\n",
    card->netdev->name);

  switch (card->medium) {
  case 130:

   if (phy->def->ops->enable_fiber)
    phy->def->ops->enable_fiber(phy, 1);
   card->medium = 129;
   break;

  case 129:

   if (phy->def->ops->enable_fiber)
    phy->def->ops->enable_fiber(phy, 0);
   card->medium = 128;
   break;

  case 128:


   spider_net_setup_aneg(card);
   card->medium = 130;
   break;
  }

  card->aneg_count = 0;
  mod_timer(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);
  return;
 }


 if (!(phy->def->ops->poll_link(phy))) {
  card->aneg_count++;
  mod_timer(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);
  return;
 }


 phy->def->ops->read_link(phy);

 spider_net_write_reg(card, SPIDER_NET_GMACST,
        spider_net_read_reg(card, SPIDER_NET_GMACST));
 spider_net_write_reg(card, SPIDER_NET_GMACINTEN, 0x4);

 if (phy->speed == 1000)
  spider_net_write_reg(card, SPIDER_NET_GMACMODE, 0x00000001);
 else
  spider_net_write_reg(card, SPIDER_NET_GMACMODE, 0);

 card->aneg_count = 0;

 pr_info("%s: link up, %i Mbps, %s-duplex %sautoneg.\n",
  card->netdev->name, phy->speed,
  phy->duplex == 1 ? "Full" : "Half",
  phy->autoneg == 1 ? "" : "no ");
}
