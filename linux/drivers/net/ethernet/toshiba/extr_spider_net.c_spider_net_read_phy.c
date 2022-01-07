
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;
struct net_device {int dummy; } ;


 int SPIDER_NET_GPCROPCMD ;
 int SPIDER_NET_GPRDAT_MASK ;
 int SPIDER_NET_GPREXEC ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static int
spider_net_read_phy(struct net_device *netdev, int mii_id, int reg)
{
 struct spider_net_card *card = netdev_priv(netdev);
 u32 readvalue;

 readvalue = ((u32)mii_id << 21) | ((u32)reg << 16);
 spider_net_write_reg(card, SPIDER_NET_GPCROPCMD, readvalue);




 do {
  readvalue = spider_net_read_reg(card, SPIDER_NET_GPCROPCMD);
 } while (readvalue & SPIDER_NET_GPREXEC);

 readvalue &= SPIDER_NET_GPRDAT_MASK;

 return readvalue;
}
