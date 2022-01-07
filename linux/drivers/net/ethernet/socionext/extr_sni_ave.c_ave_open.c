
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int phydev; int name; } ;
struct TYPE_4__ {int ndesc; scalar_t__ done_idx; scalar_t__ proc_idx; void* desc; } ;
struct TYPE_3__ {int ndesc; scalar_t__ done_idx; scalar_t__ proc_idx; void* desc; } ;
struct ave_private {int desc_size; int irq; int napi_tx; int napi_rx; scalar_t__ base; TYPE_2__ rx; TYPE_1__ tx; } ;


 int AVE_DESCID_TX ;
 int AVE_DESC_START ;
 int AVE_GI_RXDROP ;
 int AVE_GI_RXIINT ;
 int AVE_GI_RXOVF ;
 int AVE_GI_TX ;
 scalar_t__ AVE_IIRQC ;
 int AVE_IIRQC_BSCK ;
 int AVE_IIRQC_EN0 ;
 int AVE_INTM_COUNT ;
 int AVE_MAX_ETHFRAME ;
 scalar_t__ AVE_RXCR ;
 int AVE_RXCR_DRPEN ;
 int AVE_RXCR_FDUPEN ;
 int AVE_RXCR_FLOCTR ;
 int AVE_RXCR_MPSIZ_MASK ;
 int AVE_RXCR_RXEN ;
 scalar_t__ AVE_RXDC0 ;
 int AVE_RXDC0_ADDR_START ;
 int AVE_RXDC0_SIZE ;
 scalar_t__ AVE_TXCR ;
 int AVE_TXCR_FLOCTR ;
 scalar_t__ AVE_TXDC ;
 int AVE_TXDC_ADDR_START ;
 int AVE_TXDC_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int ave_desc_switch (struct net_device*,int ) ;
 int ave_desc_write_addr (struct net_device*,int ,int,int ) ;
 int ave_desc_write_cmdsts (struct net_device*,int ,int,int ) ;
 int ave_irq_handler ;
 int ave_irq_restore (struct net_device*,int) ;
 int ave_macaddr_init (struct net_device*) ;
 int ave_pfsel_init (struct net_device*) ;
 scalar_t__ ave_rxdesc_prepare (struct net_device*,int) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct net_device*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (void*) ;
 int napi_enable (int *) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int phy_start_aneg (int ) ;
 int readl (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ave_open(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 int entry;
 int ret;
 u32 val;

 ret = request_irq(priv->irq, ave_irq_handler, IRQF_SHARED, ndev->name,
     ndev);
 if (ret)
  return ret;

 priv->tx.desc = kcalloc(priv->tx.ndesc, sizeof(*priv->tx.desc),
    GFP_KERNEL);
 if (!priv->tx.desc) {
  ret = -ENOMEM;
  goto out_free_irq;
 }

 priv->rx.desc = kcalloc(priv->rx.ndesc, sizeof(*priv->rx.desc),
    GFP_KERNEL);
 if (!priv->rx.desc) {
  kfree(priv->tx.desc);
  ret = -ENOMEM;
  goto out_free_irq;
 }


 priv->tx.proc_idx = 0;
 priv->tx.done_idx = 0;
 for (entry = 0; entry < priv->tx.ndesc; entry++) {
  ave_desc_write_cmdsts(ndev, AVE_DESCID_TX, entry, 0);
  ave_desc_write_addr(ndev, AVE_DESCID_TX, entry, 0);
 }
 writel(AVE_TXDC_ADDR_START |
        (((priv->tx.ndesc * priv->desc_size) << 16) & AVE_TXDC_SIZE),
        priv->base + AVE_TXDC);


 priv->rx.proc_idx = 0;
 priv->rx.done_idx = 0;
 for (entry = 0; entry < priv->rx.ndesc; entry++) {
  if (ave_rxdesc_prepare(ndev, entry))
   break;
 }
 writel(AVE_RXDC0_ADDR_START |
        (((priv->rx.ndesc * priv->desc_size) << 16) & AVE_RXDC0_SIZE),
        priv->base + AVE_RXDC0);

 ave_desc_switch(ndev, AVE_DESC_START);

 ave_pfsel_init(ndev);
 ave_macaddr_init(ndev);



 val = AVE_RXCR_RXEN | AVE_RXCR_FDUPEN | AVE_RXCR_DRPEN |
  AVE_RXCR_FLOCTR | (AVE_MAX_ETHFRAME & AVE_RXCR_MPSIZ_MASK);
 writel(val, priv->base + AVE_RXCR);



 writel(AVE_TXCR_FLOCTR, priv->base + AVE_TXCR);


 val = readl(priv->base + AVE_IIRQC) & AVE_IIRQC_BSCK;
 val |= AVE_IIRQC_EN0 | (AVE_INTM_COUNT << 16);
 writel(val, priv->base + AVE_IIRQC);

 val = AVE_GI_RXIINT | AVE_GI_RXOVF | AVE_GI_TX | AVE_GI_RXDROP;
 ave_irq_restore(ndev, val);

 napi_enable(&priv->napi_rx);
 napi_enable(&priv->napi_tx);

 phy_start(ndev->phydev);
 phy_start_aneg(ndev->phydev);
 netif_start_queue(ndev);

 return 0;

out_free_irq:
 disable_irq(priv->irq);
 free_irq(priv->irq, ndev);

 return ret;
}
