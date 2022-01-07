
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_frame_errors; int rx_missed_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct axienet_local {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int XAE_INT_RXFIFOOVR_MASK ;
 unsigned int XAE_INT_RXRJECT_MASK ;
 int XAE_IP_OFFSET ;
 int XAE_IS_OFFSET ;
 unsigned int axienet_ior (struct axienet_local*,int ) ;
 int axienet_iow (struct axienet_local*,int ,unsigned int) ;
 struct axienet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t axienet_eth_irq(int irq, void *_ndev)
{
 struct net_device *ndev = _ndev;
 struct axienet_local *lp = netdev_priv(ndev);
 unsigned int pending;

 pending = axienet_ior(lp, XAE_IP_OFFSET);
 if (!pending)
  return IRQ_NONE;

 if (pending & XAE_INT_RXFIFOOVR_MASK)
  ndev->stats.rx_missed_errors++;

 if (pending & XAE_INT_RXRJECT_MASK)
  ndev->stats.rx_frame_errors++;

 axienet_iow(lp, XAE_IS_OFFSET, pending);
 return IRQ_HANDLED;
}
