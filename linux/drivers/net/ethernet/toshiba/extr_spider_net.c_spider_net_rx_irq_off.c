
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;


 int SPIDER_NET_GHIINT0MSK ;
 int SPIDER_NET_INT0_MASK_VALUE ;
 int SPIDER_NET_RXINT ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static void
spider_net_rx_irq_off(struct spider_net_card *card)
{
 u32 regvalue;

 regvalue = SPIDER_NET_INT0_MASK_VALUE & (~SPIDER_NET_RXINT);
 spider_net_write_reg(card, SPIDER_NET_GHIINT0MSK, regvalue);
}
