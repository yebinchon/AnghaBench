
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pciefd_rx_dma {int msg; int irq_status; } ;
struct TYPE_4__ {int * echo_skb; } ;
struct TYPE_5__ {size_t echo_idx; int echo_lock; int ndev; TYPE_1__ can; } ;
struct pciefd_can {scalar_t__ irq_tag; TYPE_2__ ucan; int tx_lock; int tx_pages_free; int irq_status; TYPE_3__* board; struct pciefd_rx_dma* rx_dma_vaddr; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int pci_dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCIEFD_REG_SYS_VER1 ;
 int le32_to_cpu (int ) ;
 int netif_wake_queue (int ) ;
 int pci_dev_msi_enabled (int ) ;
 int pciefd_can_ack_rx_dma (struct pciefd_can*) ;
 scalar_t__ pciefd_irq_is_lnk (int ) ;
 int pciefd_irq_rx_cnt (int ) ;
 scalar_t__ pciefd_irq_tag (int ) ;
 int pciefd_sys_readreg (TYPE_3__*,int ) ;
 int peak_canfd_handle_msgs_list (TYPE_2__*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pciefd_irq_handler(int irq, void *arg)
{
 struct pciefd_can *priv = arg;
 struct pciefd_rx_dma *rx_dma = priv->rx_dma_vaddr;


 if (!pci_dev_msi_enabled(priv->board->pci_dev))
  (void)pciefd_sys_readreg(priv->board, PCIEFD_REG_SYS_VER1);


 priv->irq_status = le32_to_cpu(rx_dma->irq_status);


 if (pciefd_irq_tag(priv->irq_status) != priv->irq_tag)
  return IRQ_NONE;


 peak_canfd_handle_msgs_list(&priv->ucan,
        rx_dma->msg,
        pciefd_irq_rx_cnt(priv->irq_status));


 if (pciefd_irq_is_lnk(priv->irq_status)) {
  unsigned long flags;

  spin_lock_irqsave(&priv->tx_lock, flags);
  priv->tx_pages_free++;
  spin_unlock_irqrestore(&priv->tx_lock, flags);


  spin_lock_irqsave(&priv->ucan.echo_lock, flags);
  if (!priv->ucan.can.echo_skb[priv->ucan.echo_idx])
   netif_wake_queue(priv->ucan.ndev);

  spin_unlock_irqrestore(&priv->ucan.echo_lock, flags);
 }


 pciefd_can_ack_rx_dma(priv);

 return IRQ_HANDLED;
}
