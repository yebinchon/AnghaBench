
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int dummy; } ;


 int SPIDER_NET_DMA_RX_FEND_VALUE ;
 int SPIDER_NET_GDADMACCNTR ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static inline void
spider_net_disable_rxdmac(struct spider_net_card *card)
{
 spider_net_write_reg(card, SPIDER_NET_GDADMACCNTR,
        SPIDER_NET_DMA_RX_FEND_VALUE);
}
