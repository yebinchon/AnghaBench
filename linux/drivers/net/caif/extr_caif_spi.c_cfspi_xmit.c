
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* flowctrl ) (int ,int ) ;} ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct cfspi {int flow_off_sent; scalar_t__ qd_high_mark; int ndev; TYPE_1__ cfdev; TYPE_2__ qhead; int lock; int wait; int state; } ;


 int EINVAL ;
 int SPI_XFER ;
 struct cfspi* netdev_priv (struct net_device*) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int cfspi_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct cfspi *cfspi = ((void*)0);
 unsigned long flags;
 if (!dev)
  return -EINVAL;

 cfspi = netdev_priv(dev);

 skb_queue_tail(&cfspi->qhead, skb);

 spin_lock_irqsave(&cfspi->lock, flags);
 if (!test_and_set_bit(SPI_XFER, &cfspi->state)) {

  wake_up_interruptible(&cfspi->wait);
 }
 spin_unlock_irqrestore(&cfspi->lock, flags);


 if (!cfspi->flow_off_sent &&
  cfspi->qhead.qlen > cfspi->qd_high_mark &&
  cfspi->cfdev.flowctrl) {
  cfspi->flow_off_sent = 1;
  cfspi->cfdev.flowctrl(cfspi->ndev, 0);
 }

 return 0;
}
