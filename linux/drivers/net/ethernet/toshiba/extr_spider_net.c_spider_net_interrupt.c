
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int napi; int num_rx_ints; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPIDER_NET_ERRINT ;
 int SPIDER_NET_GHIINT0STS ;
 int SPIDER_NET_GHIINT1STS ;
 int SPIDER_NET_GHIINT2STS ;
 int SPIDER_NET_INT0_MASK_VALUE ;
 int SPIDER_NET_INT1_MASK_VALUE ;
 int SPIDER_NET_INT2_MASK_VALUE ;
 int SPIDER_NET_LINKINT ;
 int SPIDER_NET_RXINT ;
 int SPIDER_NET_TXINT ;
 int napi_schedule (int *) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int spider_net_handle_error_irq (struct spider_net_card*,int,int,int) ;
 int spider_net_link_reset (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_rx_irq_off (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static irqreturn_t
spider_net_interrupt(int irq, void *ptr)
{
 struct net_device *netdev = ptr;
 struct spider_net_card *card = netdev_priv(netdev);
 u32 status_reg, error_reg1, error_reg2;

 status_reg = spider_net_read_reg(card, SPIDER_NET_GHIINT0STS);
 error_reg1 = spider_net_read_reg(card, SPIDER_NET_GHIINT1STS);
 error_reg2 = spider_net_read_reg(card, SPIDER_NET_GHIINT2STS);

 if (!(status_reg & SPIDER_NET_INT0_MASK_VALUE) &&
     !(error_reg1 & SPIDER_NET_INT1_MASK_VALUE) &&
     !(error_reg2 & SPIDER_NET_INT2_MASK_VALUE))
  return IRQ_NONE;

 if (status_reg & SPIDER_NET_RXINT ) {
  spider_net_rx_irq_off(card);
  napi_schedule(&card->napi);
  card->num_rx_ints ++;
 }
 if (status_reg & SPIDER_NET_TXINT)
  napi_schedule(&card->napi);

 if (status_reg & SPIDER_NET_LINKINT)
  spider_net_link_reset(netdev);

 if (status_reg & SPIDER_NET_ERRINT )
  spider_net_handle_error_irq(card, status_reg,
         error_reg1, error_reg2);


 spider_net_write_reg(card, SPIDER_NET_GHIINT0STS, status_reg);

 return IRQ_HANDLED;
}
