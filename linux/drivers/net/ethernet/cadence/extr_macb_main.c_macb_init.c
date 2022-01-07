
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u32 ;
struct platform_device {int dev; } ;
struct net_device {int hw_features; int features; int * ethtool_ops; int * netdev_ops; int name; } ;
struct macb_queue {int tx_error_task; int irq; int RBQPH; int TBQPH; int RBQP; int TBQP; int IMR; int IDR; int IER; int ISR; int RBQS; int napi; struct macb* bp; } ;
struct TYPE_3__ {scalar_t__ count; int list; } ;
struct TYPE_4__ {int mog_rx; int mog_init_rings; int mog_free_rx_buffers; int mog_alloc_rx_buffers; } ;
struct macb {int queue_mask; int hw_dma_cap; int caps; scalar_t__ max_tuples; scalar_t__ phy_interface; int rx_fs_lock; TYPE_1__ rx_fs_list; TYPE_2__ macbgem_ops; int max_tx_length; struct macb_queue* queues; int rx_ring_size; int tx_ring_size; } ;


 int CLKEN ;
 int DCFG6 ;
 int DCFG8 ;
 int DEFAULT_RX_RING_SIZE ;
 int DEFAULT_TX_RING_SIZE ;
 int ETHT ;
 int ETHTCMP ;
 scalar_t__ ETH_P_IP ;
 int GEM_BFEXT (int ,int) ;
 int GEM_BFINS (int ,int ,int) ;
 int GEM_BIT (int ) ;
 int GEM_IDR (unsigned int) ;
 int GEM_IER (unsigned int) ;
 int GEM_IMR (unsigned int) ;
 int GEM_ISR (unsigned int) ;
 int GEM_MAX_TX_LEN ;
 int GEM_RBQP (unsigned int) ;
 int GEM_RBQPH (unsigned int) ;
 int GEM_RBQS (unsigned int) ;
 int GEM_TBQP (unsigned int) ;
 int GEM_TBQPH (unsigned int) ;
 int HW_DMA_CAP_64B ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int MACB_BIT (int ) ;
 int MACB_CAPS_FIFO_MODE ;
 int MACB_CAPS_SG_DISABLED ;
 int MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII ;
 int MACB_CAPS_USRIO_DISABLED ;
 int MACB_CAPS_USRIO_HAS_CLKEN ;
 int MACB_IDR ;
 int MACB_IER ;
 int MACB_IMR ;
 int MACB_ISR ;
 unsigned int MACB_MAX_QUEUES ;
 int MACB_MAX_TX_LEN ;
 int MACB_NETIF_LSO ;
 int MACB_RBQP ;
 int MACB_RBQPH ;
 int MACB_TBQP ;
 int MACB_TBQPH ;
 int MII ;
 int NAPI_POLL_WEIGHT ;
 int NCFGR ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int PBUF_LSO ;
 int PCSSEL ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_RMII ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int RGMII ;
 int RMII ;
 int SCR2CMP ;
 int SCR2ETH ;
 int SCRT2_ETHT ;
 int SGMIIEN ;
 int T2SCR ;
 int USRIO ;
 int dev_err (int *,char*,int ,int) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct macb_queue*) ;
 int gem_alloc_rx_buffers ;
 int gem_ethtool_ops ;
 int gem_free_rx_buffers ;
 int gem_init_rings ;
 int gem_readl (struct macb*,int ) ;
 int gem_rx ;
 int gem_writel_n (struct macb*,int ,int ,int) ;
 int macb_alloc_rx_buffers ;
 int macb_dbw (struct macb*) ;
 int macb_ethtool_ops ;
 int macb_free_rx_buffers ;
 int macb_init_rings ;
 int macb_interrupt ;
 scalar_t__ macb_is_gem (struct macb*) ;
 int macb_mdc_clk_div (struct macb*) ;
 int macb_netdev_ops ;
 int macb_or_gem_writel (struct macb*,int ,int) ;
 int macb_poll ;
 int macb_rx ;
 int macb_tx_error_task ;
 int macb_writel (struct macb*,int ,int) ;
 scalar_t__ min (int,int) ;
 struct macb* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,unsigned int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int macb_init(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 unsigned int hw_q, q;
 struct macb *bp = netdev_priv(dev);
 struct macb_queue *queue;
 int err;
 u32 val, reg;

 bp->tx_ring_size = DEFAULT_TX_RING_SIZE;
 bp->rx_ring_size = DEFAULT_RX_RING_SIZE;





 for (hw_q = 0, q = 0; hw_q < MACB_MAX_QUEUES; ++hw_q) {
  if (!(bp->queue_mask & (1 << hw_q)))
   continue;

  queue = &bp->queues[q];
  queue->bp = bp;
  netif_napi_add(dev, &queue->napi, macb_poll, NAPI_POLL_WEIGHT);
  if (hw_q) {
   queue->ISR = GEM_ISR(hw_q - 1);
   queue->IER = GEM_IER(hw_q - 1);
   queue->IDR = GEM_IDR(hw_q - 1);
   queue->IMR = GEM_IMR(hw_q - 1);
   queue->TBQP = GEM_TBQP(hw_q - 1);
   queue->RBQP = GEM_RBQP(hw_q - 1);
   queue->RBQS = GEM_RBQS(hw_q - 1);






  } else {

   queue->ISR = MACB_ISR;
   queue->IER = MACB_IER;
   queue->IDR = MACB_IDR;
   queue->IMR = MACB_IMR;
   queue->TBQP = MACB_TBQP;
   queue->RBQP = MACB_RBQP;






  }






  queue->irq = platform_get_irq(pdev, q);
  err = devm_request_irq(&pdev->dev, queue->irq, macb_interrupt,
           IRQF_SHARED, dev->name, queue);
  if (err) {
   dev_err(&pdev->dev,
    "Unable to request IRQ %d (error %d)\n",
    queue->irq, err);
   return err;
  }

  INIT_WORK(&queue->tx_error_task, macb_tx_error_task);
  q++;
 }

 dev->netdev_ops = &macb_netdev_ops;


 if (macb_is_gem(bp)) {
  bp->max_tx_length = GEM_MAX_TX_LEN;
  bp->macbgem_ops.mog_alloc_rx_buffers = gem_alloc_rx_buffers;
  bp->macbgem_ops.mog_free_rx_buffers = gem_free_rx_buffers;
  bp->macbgem_ops.mog_init_rings = gem_init_rings;
  bp->macbgem_ops.mog_rx = gem_rx;
  dev->ethtool_ops = &gem_ethtool_ops;
 } else {
  bp->max_tx_length = MACB_MAX_TX_LEN;
  bp->macbgem_ops.mog_alloc_rx_buffers = macb_alloc_rx_buffers;
  bp->macbgem_ops.mog_free_rx_buffers = macb_free_rx_buffers;
  bp->macbgem_ops.mog_init_rings = macb_init_rings;
  bp->macbgem_ops.mog_rx = macb_rx;
  dev->ethtool_ops = &macb_ethtool_ops;
 }


 dev->hw_features = NETIF_F_SG;


 if (GEM_BFEXT(PBUF_LSO, gem_readl(bp, DCFG6)))
  dev->hw_features |= MACB_NETIF_LSO;


 if (macb_is_gem(bp) && !(bp->caps & MACB_CAPS_FIFO_MODE))
  dev->hw_features |= NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
 if (bp->caps & MACB_CAPS_SG_DISABLED)
  dev->hw_features &= ~NETIF_F_SG;
 dev->features = dev->hw_features;





 reg = gem_readl(bp, DCFG8);
 bp->max_tuples = min((GEM_BFEXT(SCR2CMP, reg) / 3),
   GEM_BFEXT(T2SCR, reg));
 if (bp->max_tuples > 0) {

  if (GEM_BFEXT(SCR2ETH, reg) > 0) {

   reg = 0;
   reg = GEM_BFINS(ETHTCMP, (uint16_t)ETH_P_IP, reg);
   gem_writel_n(bp, ETHT, SCRT2_ETHT, reg);

   dev->hw_features |= NETIF_F_NTUPLE;

   INIT_LIST_HEAD(&bp->rx_fs_list.list);
   bp->rx_fs_list.count = 0;
   spin_lock_init(&bp->rx_fs_lock);
  } else
   bp->max_tuples = 0;
 }

 if (!(bp->caps & MACB_CAPS_USRIO_DISABLED)) {
  val = 0;
  if (bp->phy_interface == PHY_INTERFACE_MODE_RGMII)
   val = GEM_BIT(RGMII);
  else if (bp->phy_interface == PHY_INTERFACE_MODE_RMII &&
    (bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
   val = MACB_BIT(RMII);
  else if (!(bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
   val = MACB_BIT(MII);

  if (bp->caps & MACB_CAPS_USRIO_HAS_CLKEN)
   val |= MACB_BIT(CLKEN);

  macb_or_gem_writel(bp, USRIO, val);
 }


 val = macb_mdc_clk_div(bp);
 val |= macb_dbw(bp);
 if (bp->phy_interface == PHY_INTERFACE_MODE_SGMII)
  val |= GEM_BIT(SGMIIEN) | GEM_BIT(PCSSEL);
 macb_writel(bp, NCFGR, val);

 return 0;
}
