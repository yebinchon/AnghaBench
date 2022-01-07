
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tail; } ;
struct spider_net_card {TYPE_2__ rx_chain; } ;
struct TYPE_3__ {int bus_addr; } ;


 int SPIDER_NET_GDADCHA ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static inline void
spider_net_enable_rxchtails(struct spider_net_card *card)
{

 spider_net_write_reg(card, SPIDER_NET_GDADCHA ,
        card->rx_chain.tail->bus_addr);
}
