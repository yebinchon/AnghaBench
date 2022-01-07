
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int aneg_timer; int medium; scalar_t__ aneg_count; } ;
struct net_device {int dummy; } ;


 int BCM54XX_COPPER ;
 scalar_t__ SPIDER_NET_ANEG_TIMER ;
 int SPIDER_NET_GMACINTEN ;
 int SPIDER_NET_GMACST ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_setup_aneg (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static void
spider_net_link_reset(struct net_device *netdev)
{

 struct spider_net_card *card = netdev_priv(netdev);

 del_timer_sync(&card->aneg_timer);


 spider_net_write_reg(card, SPIDER_NET_GMACST,
        spider_net_read_reg(card, SPIDER_NET_GMACST));
 spider_net_write_reg(card, SPIDER_NET_GMACINTEN, 0);


 card->aneg_count = 0;
 card->medium = BCM54XX_COPPER;
 spider_net_setup_aneg(card);
 mod_timer(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);

}
