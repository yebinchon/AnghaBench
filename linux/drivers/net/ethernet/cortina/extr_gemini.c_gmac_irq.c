
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dev_id; } ;
struct TYPE_2__ {int rx_fifo_errors; } ;
struct gemini_ethernet_port {int ir_stats_syncp; TYPE_1__ stats; int rx_coalesce_timer; int rx_coalesce_nsecs; int napi; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int irq_lock; scalar_t__ base; } ;
typedef int ktime_t ;
typedef int irqreturn_t ;


 int DEFAULT_Q0_INT_BIT ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ;
 int GMAC0_IRQ0_2 ;
 int GMAC0_IRQ0_TXQ0_INTS ;
 int GMAC0_MIB_INT_BIT ;
 int GMAC0_RXDERR_INT_BIT ;
 int GMAC0_RX_OVERRUN_INT_BIT ;
 int HRTIMER_MODE_REL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int gmac_dump_dma_state (struct net_device*) ;
 int gmac_enable_irq (struct net_device*,int ) ;
 int gmac_enable_rx_irq (struct net_device*,int ) ;
 int gmac_get_intr_flags (struct net_device*,int) ;
 int gmac_tx_irq (struct net_device*,int ) ;
 int gmac_update_hw_stats (struct net_device*) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (int ,int ) ;
 int napi_schedule (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t gmac_irq(int irq, void *data)
{
 struct gemini_ethernet_port *port;
 struct net_device *netdev = data;
 struct gemini_ethernet *geth;
 u32 val, orr = 0;

 port = netdev_priv(netdev);
 geth = port->geth;

 val = gmac_get_intr_flags(netdev, 0);
 orr |= val;

 if (val & (GMAC0_IRQ0_2 << (netdev->dev_id * 2))) {

  netdev_err(netdev, "hw failure/sw bug\n");
  gmac_dump_dma_state(netdev);


  gmac_enable_irq(netdev, 0);
  return IRQ_HANDLED;
 }

 if (val & (GMAC0_IRQ0_TXQ0_INTS << (netdev->dev_id * 6)))
  gmac_tx_irq(netdev, 0);

 val = gmac_get_intr_flags(netdev, 1);
 orr |= val;

 if (val & (DEFAULT_Q0_INT_BIT << netdev->dev_id)) {
  gmac_enable_rx_irq(netdev, 0);

  if (!port->rx_coalesce_nsecs) {
   napi_schedule(&port->napi);
  } else {
   ktime_t ktime;

   ktime = ktime_set(0, port->rx_coalesce_nsecs);
   hrtimer_start(&port->rx_coalesce_timer, ktime,
          HRTIMER_MODE_REL);
  }
 }

 val = gmac_get_intr_flags(netdev, 4);
 orr |= val;

 if (val & (GMAC0_MIB_INT_BIT << (netdev->dev_id * 8)))
  gmac_update_hw_stats(netdev);

 if (val & (GMAC0_RX_OVERRUN_INT_BIT << (netdev->dev_id * 8))) {
  writel(GMAC0_RXDERR_INT_BIT << (netdev->dev_id * 8),
         geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);

  spin_lock(&geth->irq_lock);
  u64_stats_update_begin(&port->ir_stats_syncp);
  ++port->stats.rx_fifo_errors;
  u64_stats_update_end(&port->ir_stats_syncp);
  spin_unlock(&geth->irq_lock);
 }

 return orr ? IRQ_HANDLED : IRQ_NONE;
}
