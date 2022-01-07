
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct spider_net_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
spider_net_ethtool_get_msglevel(struct net_device *netdev)
{
 struct spider_net_card *card;
 card = netdev_priv(netdev);
 return card->msg_enable;
}
