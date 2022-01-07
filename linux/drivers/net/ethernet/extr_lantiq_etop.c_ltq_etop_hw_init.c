
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ltq_etop_priv {TYPE_2__* pdev; struct ltq_etop_chan* ch; TYPE_1__* pldata; } ;
struct TYPE_7__ {int nr; scalar_t__ desc; int irq; int * dev; } ;
struct ltq_etop_chan {int idx; TYPE_3__ dma; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int mii_mode; } ;


 int DMA_PORT_ETOP ;
 int ENOMEM ;
 int ENOTSUPP ;
 int ETOP_MII_MASK ;
 int ETOP_MII_NORMAL ;
 int ETOP_MII_REVERSE ;
 scalar_t__ IS_RX (int) ;
 scalar_t__ IS_TX (int) ;
 int LQ_PPE32_ENET_MAC_CFG ;
 scalar_t__ LTQ_DESC_NUM ;
 int LTQ_DMA_CH0_INT ;
 int LTQ_ETOP_CFG ;
 int MAX_DMA_CHAN ;


 int PMU_PPE ;
 int PPE32_CGEN ;
 int ltq_dma_alloc_rx (TYPE_3__*) ;
 int ltq_dma_alloc_tx (TYPE_3__*) ;
 int ltq_dma_init_port (int ) ;
 scalar_t__ ltq_etop_alloc_skb (struct ltq_etop_chan*) ;
 int ltq_etop_dma_irq ;
 int ltq_etop_w32 (int ,int ) ;
 int ltq_etop_w32_mask (int ,int ,int ) ;
 int ltq_pmu_enable (int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int request_irq (int,int ,int ,char*,struct ltq_etop_priv*) ;

__attribute__((used)) static int
ltq_etop_hw_init(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 int i;

 ltq_pmu_enable(PMU_PPE);

 switch (priv->pldata->mii_mode) {
 case 128:
  ltq_etop_w32_mask(ETOP_MII_MASK,
   ETOP_MII_REVERSE, LTQ_ETOP_CFG);
  break;

 case 129:
  ltq_etop_w32_mask(ETOP_MII_MASK,
   ETOP_MII_NORMAL, LTQ_ETOP_CFG);
  break;

 default:
  netdev_err(dev, "unknown mii mode %d\n",
   priv->pldata->mii_mode);
  return -ENOTSUPP;
 }


 ltq_etop_w32(PPE32_CGEN, LQ_PPE32_ENET_MAC_CFG);

 ltq_dma_init_port(DMA_PORT_ETOP);

 for (i = 0; i < MAX_DMA_CHAN; i++) {
  int irq = LTQ_DMA_CH0_INT + i;
  struct ltq_etop_chan *ch = &priv->ch[i];

  ch->idx = ch->dma.nr = i;
  ch->dma.dev = &priv->pdev->dev;

  if (IS_TX(i)) {
   ltq_dma_alloc_tx(&ch->dma);
   request_irq(irq, ltq_etop_dma_irq, 0, "etop_tx", priv);
  } else if (IS_RX(i)) {
   ltq_dma_alloc_rx(&ch->dma);
   for (ch->dma.desc = 0; ch->dma.desc < LTQ_DESC_NUM;
     ch->dma.desc++)
    if (ltq_etop_alloc_skb(ch))
     return -ENOMEM;
   ch->dma.desc = 0;
   request_irq(irq, ltq_etop_dma_irq, 0, "etop_rx", priv);
  }
  ch->dma.irq = irq;
 }
 return 0;
}
