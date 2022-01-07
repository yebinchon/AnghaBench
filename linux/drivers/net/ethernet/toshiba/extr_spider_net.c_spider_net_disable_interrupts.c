
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int dummy; } ;


 int SPIDER_NET_GHIINT0MSK ;
 int SPIDER_NET_GHIINT1MSK ;
 int SPIDER_NET_GHIINT2MSK ;
 int SPIDER_NET_GMACINTEN ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static void
spider_net_disable_interrupts(struct spider_net_card *card)
{
 spider_net_write_reg(card, SPIDER_NET_GHIINT0MSK, 0);
 spider_net_write_reg(card, SPIDER_NET_GHIINT1MSK, 0);
 spider_net_write_reg(card, SPIDER_NET_GHIINT2MSK, 0);
 spider_net_write_reg(card, SPIDER_NET_GMACINTEN, 0);
}
