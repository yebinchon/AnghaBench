
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_4__ {int weight; } ;
struct pcnet32_private {int tx_ring_size; int rx_ring_size; int lock; TYPE_2__ napi; TYPE_1__* a; } ;
struct net_device {int base_addr; } ;
struct ethtool_ringparam {int rx_pending; int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct TYPE_3__ {int (* write_csr ) (int ,int ,int ) ;} ;


 int CSR0 ;
 int CSR0_NORMAL ;
 int CSR0_STOP ;
 int EINVAL ;
 int PCNET32_LOG_MAX_RX_BUFFERS ;
 int PCNET32_LOG_MAX_TX_BUFFERS ;
 scalar_t__ RX_MAX_RING_SIZE ;
 scalar_t__ TX_MAX_RING_SIZE ;
 int drv ;
 unsigned int min (int ,unsigned int) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_info (struct pcnet32_private*,int ,struct net_device*,char*,int,int) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pcnet32_netif_start (struct net_device*) ;
 int pcnet32_netif_stop (struct net_device*) ;
 int pcnet32_realloc_rx_ring (struct net_device*,struct pcnet32_private*,int) ;
 int pcnet32_realloc_tx_ring (struct net_device*,struct pcnet32_private*,int) ;
 int pcnet32_restart (struct net_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int pcnet32_set_ringparam(struct net_device *dev,
     struct ethtool_ringparam *ering)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long flags;
 unsigned int size;
 ulong ioaddr = dev->base_addr;
 int i;

 if (ering->rx_mini_pending || ering->rx_jumbo_pending)
  return -EINVAL;

 if (netif_running(dev))
  pcnet32_netif_stop(dev);

 spin_lock_irqsave(&lp->lock, flags);
 lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);

 size = min(ering->tx_pending, (unsigned int)TX_MAX_RING_SIZE);




 for (i = 2; i <= PCNET32_LOG_MAX_TX_BUFFERS; i++) {
  if (size <= (1 << i))
   break;
 }
 if ((1 << i) != lp->tx_ring_size)
  pcnet32_realloc_tx_ring(dev, lp, i);

 size = min(ering->rx_pending, (unsigned int)RX_MAX_RING_SIZE);
 for (i = 2; i <= PCNET32_LOG_MAX_RX_BUFFERS; i++) {
  if (size <= (1 << i))
   break;
 }
 if ((1 << i) != lp->rx_ring_size)
  pcnet32_realloc_rx_ring(dev, lp, i);

 lp->napi.weight = lp->rx_ring_size / 2;

 if (netif_running(dev)) {
  pcnet32_netif_start(dev);
  pcnet32_restart(dev, CSR0_NORMAL);
 }

 spin_unlock_irqrestore(&lp->lock, flags);

 netif_info(lp, drv, dev, "Ring Param Settings: RX: %d, TX: %d\n",
     lp->rx_ring_size, lp->tx_ring_size);

 return 0;
}
