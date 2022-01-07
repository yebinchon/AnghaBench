
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int name; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int irq_rx; int irq_tx; int rx_ring_size; unsigned int rx_desc_alloc_size; int tx_ring_size; unsigned int tx_desc_alloc_size; int tx_desc_count; int num_ports; int rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int * tx_skb; int * rx_skb; int rx_skb_size; int swphy_poll; struct bcm63xx_enetsw_port* used_ports; int tx_chan; int rx_chan; int napi; int dma_maxburst; scalar_t__* sw_port_link; scalar_t__ rx_curr_desc; scalar_t__ rx_dirty_desc; scalar_t__ rx_desc_count; int tx_lock; scalar_t__ tx_curr_desc; scalar_t__ tx_dirty_desc; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int address; } ;
struct bcm63xx_enetsw_port {int force_speed; scalar_t__ force_duplex_full; int name; int bypass_link; int used; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int ENETDMAC_CHANCFG ;
 int ENETDMAC_CHANCFG_EN_MASK ;
 int ENETDMAC_IR ;
 int ENETDMAC_IRMASK ;
 int ENETDMAC_IR_PKTDONE_MASK ;
 int ENETDMAC_MAXBURST ;
 int ENETDMAS_RSTART_REG ;
 int ENETDMAS_SRAM2_REG ;
 int ENETDMAS_SRAM3_REG ;
 int ENETDMAS_SRAM4_REG ;
 int ENETDMA_BUFALLOC_FORCE_MASK ;
 int ENETDMA_BUFALLOC_REG (int ) ;
 int ENETDMA_CFG_EN_MASK ;
 int ENETDMA_CFG_REG ;
 int ENETDMA_FLOWCH_REG (int ) ;
 int ENETDMA_FLOWCL_REG (int ) ;
 int ENETSW_GMCR_REG ;
 int ENETSW_GMCR_RST_MIB_MASK ;
 int ENETSW_IMPOV_1000_MASK ;
 int ENETSW_IMPOV_100_MASK ;
 int ENETSW_IMPOV_FDX_MASK ;
 int ENETSW_IMPOV_FORCE_MASK ;
 int ENETSW_IMPOV_LINKUP_MASK ;
 int ENETSW_IMPOV_REG ;
 int ENETSW_JMBCTL_MAXSIZE_REG ;
 int ENETSW_JMBCTL_PORT_REG ;
 int ENETSW_PORTOV_ENABLE_MASK ;
 int ENETSW_PORTOV_LINKUP_MASK ;
 int ENETSW_PORTOV_REG (int) ;
 int ENETSW_PTCTRL_REG (int) ;
 int ENETSW_PTCTRL_RXDIS_MASK ;
 int ENETSW_PTCTRL_TXDIS_MASK ;
 int ENETSW_SWMODE_FWD_EN_MASK ;
 int ENETSW_SWMODE_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm_enet_isr_dma ;
 scalar_t__ bcm_enet_refill_rx (struct net_device*) ;
 int dev_err (struct device*,char*,...) ;
 void* dma_alloc_coherent (struct device*,unsigned int,int *,int ) ;
 int dma_free_coherent (struct device*,unsigned int,struct bcm_enet_desc*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int enet_dma_writel (struct bcm_enet_priv*,int,int ) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int ,int ,int ) ;
 int enet_dmas_writel (struct bcm_enet_priv*,int ,int ,int ) ;
 int enetsw_readb (struct bcm_enet_priv*,int ) ;
 int enetsw_writeb (struct bcm_enet_priv*,int,int ) ;
 int enetsw_writel (struct bcm_enet_priv*,int,int ) ;
 int enetsw_writew (struct bcm_enet_priv*,int,int ) ;
 int free_irq (int,struct net_device*) ;
 int jiffies ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int kfree_skb (int ) ;
 int mdelay (int) ;
 int mod_timer (int *,int ) ;
 int napi_enable (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pr_warn (char*,int ) ;
 int request_irq (int,int ,int ,int ,struct net_device*) ;
 int spin_lock_init (int *) ;
 int swphy_poll_timer ;
 int timer_setup (int *,int ,int ) ;
 int wmb () ;

__attribute__((used)) static int bcm_enetsw_open(struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct device *kdev;
 int i, ret;
 unsigned int size;
 void *p;
 u32 val;

 priv = netdev_priv(dev);
 kdev = &priv->pdev->dev;


 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

 ret = request_irq(priv->irq_rx, bcm_enet_isr_dma,
     0, dev->name, dev);
 if (ret)
  goto out_freeirq;

 if (priv->irq_tx != -1) {
  ret = request_irq(priv->irq_tx, bcm_enet_isr_dma,
      0, dev->name, dev);
  if (ret)
   goto out_freeirq_rx;
 }


 size = priv->rx_ring_size * sizeof(struct bcm_enet_desc);
 p = dma_alloc_coherent(kdev, size, &priv->rx_desc_dma, GFP_KERNEL);
 if (!p) {
  dev_err(kdev, "cannot allocate rx ring %u\n", size);
  ret = -ENOMEM;
  goto out_freeirq_tx;
 }

 priv->rx_desc_alloc_size = size;
 priv->rx_desc_cpu = p;


 size = priv->tx_ring_size * sizeof(struct bcm_enet_desc);
 p = dma_alloc_coherent(kdev, size, &priv->tx_desc_dma, GFP_KERNEL);
 if (!p) {
  dev_err(kdev, "cannot allocate tx ring\n");
  ret = -ENOMEM;
  goto out_free_rx_ring;
 }

 priv->tx_desc_alloc_size = size;
 priv->tx_desc_cpu = p;

 priv->tx_skb = kcalloc(priv->tx_ring_size, sizeof(struct sk_buff *),
          GFP_KERNEL);
 if (!priv->tx_skb) {
  dev_err(kdev, "cannot allocate rx skb queue\n");
  ret = -ENOMEM;
  goto out_free_tx_ring;
 }

 priv->tx_desc_count = priv->tx_ring_size;
 priv->tx_dirty_desc = 0;
 priv->tx_curr_desc = 0;
 spin_lock_init(&priv->tx_lock);


 priv->rx_skb = kcalloc(priv->rx_ring_size, sizeof(struct sk_buff *),
          GFP_KERNEL);
 if (!priv->rx_skb) {
  dev_err(kdev, "cannot allocate rx skb queue\n");
  ret = -ENOMEM;
  goto out_free_tx_skb;
 }

 priv->rx_desc_count = 0;
 priv->rx_dirty_desc = 0;
 priv->rx_curr_desc = 0;


 for (i = 0; i < priv->num_ports; i++) {
  enetsw_writeb(priv, ENETSW_PORTOV_ENABLE_MASK,
         ENETSW_PORTOV_REG(i));
  enetsw_writeb(priv, ENETSW_PTCTRL_RXDIS_MASK |
         ENETSW_PTCTRL_TXDIS_MASK,
         ENETSW_PTCTRL_REG(i));

  priv->sw_port_link[i] = 0;
 }


 val = enetsw_readb(priv, ENETSW_GMCR_REG);
 val |= ENETSW_GMCR_RST_MIB_MASK;
 enetsw_writeb(priv, val, ENETSW_GMCR_REG);
 mdelay(1);
 val &= ~ENETSW_GMCR_RST_MIB_MASK;
 enetsw_writeb(priv, val, ENETSW_GMCR_REG);
 mdelay(1);


 val = enetsw_readb(priv, ENETSW_IMPOV_REG);
 val |= ENETSW_IMPOV_FORCE_MASK | ENETSW_IMPOV_LINKUP_MASK;
 enetsw_writeb(priv, val, ENETSW_IMPOV_REG);


 val = enetsw_readb(priv, ENETSW_SWMODE_REG);
 val |= ENETSW_SWMODE_FWD_EN_MASK;
 enetsw_writeb(priv, val, ENETSW_SWMODE_REG);


 enetsw_writel(priv, 0x1ff, ENETSW_JMBCTL_PORT_REG);
 enetsw_writew(priv, 9728, ENETSW_JMBCTL_MAXSIZE_REG);


 enet_dma_writel(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
   ENETDMA_BUFALLOC_REG(priv->rx_chan));

 if (bcm_enet_refill_rx(dev)) {
  dev_err(kdev, "cannot allocate rx skb queue\n");
  ret = -ENOMEM;
  goto out;
 }


 enet_dmas_writel(priv, priv->rx_desc_dma,
    ENETDMAS_RSTART_REG, priv->rx_chan);
 enet_dmas_writel(priv, priv->tx_desc_dma,
    ENETDMAS_RSTART_REG, priv->tx_chan);


 enet_dmas_writel(priv, 0, ENETDMAS_SRAM2_REG, priv->rx_chan);
 enet_dmas_writel(priv, 0, ENETDMAS_SRAM2_REG, priv->tx_chan);
 enet_dmas_writel(priv, 0, ENETDMAS_SRAM3_REG, priv->rx_chan);
 enet_dmas_writel(priv, 0, ENETDMAS_SRAM3_REG, priv->tx_chan);
 enet_dmas_writel(priv, 0, ENETDMAS_SRAM4_REG, priv->rx_chan);
 enet_dmas_writel(priv, 0, ENETDMAS_SRAM4_REG, priv->tx_chan);


 enet_dmac_writel(priv, priv->dma_maxburst,
    ENETDMAC_MAXBURST, priv->rx_chan);
 enet_dmac_writel(priv, priv->dma_maxburst,
    ENETDMAC_MAXBURST, priv->tx_chan);


 val = priv->rx_ring_size / 3;
 enet_dma_writel(priv, val, ENETDMA_FLOWCL_REG(priv->rx_chan));
 val = (priv->rx_ring_size * 2) / 3;
 enet_dma_writel(priv, val, ENETDMA_FLOWCH_REG(priv->rx_chan));




 wmb();
 enet_dma_writel(priv, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);
 enet_dmac_writel(priv, ENETDMAC_CHANCFG_EN_MASK,
    ENETDMAC_CHANCFG, priv->rx_chan);


 enet_dmac_writel(priv, ENETDMAC_IR_PKTDONE_MASK,
    ENETDMAC_IR, priv->rx_chan);
 enet_dmac_writel(priv, ENETDMAC_IR_PKTDONE_MASK,
    ENETDMAC_IR, priv->tx_chan);


 napi_enable(&priv->napi);

 enet_dmac_writel(priv, ENETDMAC_IR_PKTDONE_MASK,
    ENETDMAC_IRMASK, priv->rx_chan);
 enet_dmac_writel(priv, ENETDMAC_IR_PKTDONE_MASK,
    ENETDMAC_IRMASK, priv->tx_chan);

 netif_carrier_on(dev);
 netif_start_queue(dev);


 for (i = 0; i < priv->num_ports; i++) {
  struct bcm63xx_enetsw_port *port;
  u8 override;
  port = &priv->used_ports[i];
  if (!port->used)
   continue;

  if (!port->bypass_link)
   continue;

  override = ENETSW_PORTOV_ENABLE_MASK |
   ENETSW_PORTOV_LINKUP_MASK;

  switch (port->force_speed) {
  case 1000:
   override |= ENETSW_IMPOV_1000_MASK;
   break;
  case 100:
   override |= ENETSW_IMPOV_100_MASK;
   break;
  case 10:
   break;
  default:
   pr_warn("invalid forced speed on port %s: assume 10\n",
          port->name);
   break;
  }

  if (port->force_duplex_full)
   override |= ENETSW_IMPOV_FDX_MASK;


  enetsw_writeb(priv, override, ENETSW_PORTOV_REG(i));
  enetsw_writeb(priv, 0, ENETSW_PTCTRL_REG(i));
 }


 timer_setup(&priv->swphy_poll, swphy_poll_timer, 0);
 mod_timer(&priv->swphy_poll, jiffies);
 return 0;

out:
 for (i = 0; i < priv->rx_ring_size; i++) {
  struct bcm_enet_desc *desc;

  if (!priv->rx_skb[i])
   continue;

  desc = &priv->rx_desc_cpu[i];
  dma_unmap_single(kdev, desc->address, priv->rx_skb_size,
     DMA_FROM_DEVICE);
  kfree_skb(priv->rx_skb[i]);
 }
 kfree(priv->rx_skb);

out_free_tx_skb:
 kfree(priv->tx_skb);

out_free_tx_ring:
 dma_free_coherent(kdev, priv->tx_desc_alloc_size,
     priv->tx_desc_cpu, priv->tx_desc_dma);

out_free_rx_ring:
 dma_free_coherent(kdev, priv->rx_desc_alloc_size,
     priv->rx_desc_cpu, priv->rx_desc_dma);

out_freeirq_tx:
 if (priv->irq_tx != -1)
  free_irq(priv->irq_tx, dev);

out_freeirq_rx:
 free_irq(priv->irq_rx, dev);

out_freeirq:
 return ret;
}
