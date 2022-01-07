
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {scalar_t__ dev_id; } ;
struct gemini_ethernet_port {int rxq_order; struct net_device* netdev; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {unsigned int freeq_order; int irq_lock; scalar_t__ base; scalar_t__ freeq_ring; int dev; TYPE_2__* port0; TYPE_1__* port1; } ;
struct TYPE_4__ {struct net_device* netdev; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 int EBUSY ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ;
 int SWFQ_EMPTY_INT_BIT ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int geth_cleanup_freeq (struct gemini_ethernet*) ;
 int geth_setup_freeq (struct gemini_ethernet*) ;
 scalar_t__ ilog2 (unsigned int) ;
 unsigned int min (int,scalar_t__) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__,int,int) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int geth_resize_freeq(struct gemini_ethernet_port *port)
{
 struct gemini_ethernet *geth = port->geth;
 struct net_device *netdev = port->netdev;
 struct gemini_ethernet_port *other_port;
 struct net_device *other_netdev;
 unsigned int new_size = 0;
 unsigned int new_order;
 unsigned long flags;
 u32 en;
 int ret;

 if (netdev->dev_id == 0)
  other_netdev = geth->port1->netdev;
 else
  other_netdev = geth->port0->netdev;

 if (other_netdev && netif_running(other_netdev))
  return -EBUSY;

 new_size = 1 << (port->rxq_order + 1);
 netdev_dbg(netdev, "port %d size: %d order %d\n",
     netdev->dev_id,
     new_size,
     port->rxq_order);
 if (other_netdev) {
  other_port = netdev_priv(other_netdev);
  new_size += 1 << (other_port->rxq_order + 1);
  netdev_dbg(other_netdev, "port %d size: %d order %d\n",
      other_netdev->dev_id,
      (1 << (other_port->rxq_order + 1)),
      other_port->rxq_order);
 }

 new_order = min(15, ilog2(new_size - 1) + 1);
 dev_dbg(geth->dev, "set shared queue to size %d order %d\n",
  new_size, new_order);
 if (geth->freeq_order == new_order)
  return 0;

 spin_lock_irqsave(&geth->irq_lock, flags);


 en = readl(geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 en &= ~SWFQ_EMPTY_INT_BIT;
 writel(en, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 spin_unlock_irqrestore(&geth->irq_lock, flags);


 if (geth->freeq_ring)
  geth_cleanup_freeq(geth);


 geth->freeq_order = new_order;
 ret = geth_setup_freeq(geth);





 spin_lock_irqsave(&geth->irq_lock, flags);
 en |= SWFQ_EMPTY_INT_BIT;
 writel(en, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 spin_unlock_irqrestore(&geth->irq_lock, flags);

 return ret;
}
