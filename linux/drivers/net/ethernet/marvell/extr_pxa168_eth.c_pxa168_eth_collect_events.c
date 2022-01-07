
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa168_eth_private {int work_todo; } ;
struct net_device {int dummy; } ;


 int ICR_RXBUF ;
 int ICR_TXBUF_H ;
 int ICR_TXBUF_L ;
 int INT_CAUSE ;
 int IRQ_NONE ;
 int WORK_TX_DONE ;
 int rdl (struct pxa168_eth_private*,int ) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int pxa168_eth_collect_events(struct pxa168_eth_private *pep,
         struct net_device *dev)
{
 u32 icr;
 int ret = 0;

 icr = rdl(pep, INT_CAUSE);
 if (icr == 0)
  return IRQ_NONE;

 wrl(pep, INT_CAUSE, ~icr);
 if (icr & (ICR_TXBUF_H | ICR_TXBUF_L)) {
  pep->work_todo |= WORK_TX_DONE;
  ret = 1;
 }
 if (icr & ICR_RXBUF)
  ret = 1;
 return ret;
}
