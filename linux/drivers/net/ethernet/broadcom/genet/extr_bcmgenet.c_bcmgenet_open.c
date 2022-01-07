
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; int dev_addr; } ;
struct bcmgenet_priv {int crc_fwd_en; int clk; scalar_t__ internal_phy; int irq0; int irq1; } ;


 int CMD_CRC_FWD ;
 int EXT_ENERGY_DET_MASK ;
 int EXT_EXT_PWR_MGMT ;
 int GENET_POWER_PASSIVE ;
 int IRQF_SHARED ;
 int UMAC_CMD ;
 unsigned long bcmgenet_dma_disable (struct bcmgenet_priv*) ;
 int bcmgenet_dma_teardown (struct bcmgenet_priv*) ;
 int bcmgenet_enable_dma (struct bcmgenet_priv*,unsigned long) ;
 int bcmgenet_ext_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_ext_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_fini_dma (struct bcmgenet_priv*) ;
 int bcmgenet_hfb_init (struct bcmgenet_priv*) ;
 int bcmgenet_init_dma (struct bcmgenet_priv*) ;
 int bcmgenet_isr0 ;
 int bcmgenet_isr1 ;
 int bcmgenet_mii_probe (struct net_device*) ;
 int bcmgenet_netif_start (struct net_device*) ;
 int bcmgenet_power_down (struct bcmgenet_priv*,int ) ;
 int bcmgenet_power_up (struct bcmgenet_priv*,int ) ;
 int bcmgenet_set_hw_addr (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_reset (struct bcmgenet_priv*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int free_irq (int ,struct bcmgenet_priv*) ;
 int ifup ;
 int init_umac (struct bcmgenet_priv*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct bcmgenet_priv*,int ,struct net_device*,char*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct bcmgenet_priv*) ;

__attribute__((used)) static int bcmgenet_open(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 unsigned long dma_ctrl;
 u32 reg;
 int ret;

 netif_dbg(priv, ifup, dev, "bcmgenet_open\n");


 clk_prepare_enable(priv->clk);




 if (priv->internal_phy)
  bcmgenet_power_up(priv, GENET_POWER_PASSIVE);


 bcmgenet_umac_reset(priv);

 init_umac(priv);


 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 priv->crc_fwd_en = !!(reg & CMD_CRC_FWD);

 bcmgenet_set_hw_addr(priv, dev->dev_addr);

 if (priv->internal_phy) {
  reg = bcmgenet_ext_readl(priv, EXT_EXT_PWR_MGMT);
  reg |= EXT_ENERGY_DET_MASK;
  bcmgenet_ext_writel(priv, reg, EXT_EXT_PWR_MGMT);
 }


 dma_ctrl = bcmgenet_dma_disable(priv);


 ret = bcmgenet_init_dma(priv);
 if (ret) {
  netdev_err(dev, "failed to initialize DMA\n");
  goto err_clk_disable;
 }


 bcmgenet_enable_dma(priv, dma_ctrl);


 bcmgenet_hfb_init(priv);

 ret = request_irq(priv->irq0, bcmgenet_isr0, IRQF_SHARED,
     dev->name, priv);
 if (ret < 0) {
  netdev_err(dev, "can't request IRQ %d\n", priv->irq0);
  goto err_fini_dma;
 }

 ret = request_irq(priv->irq1, bcmgenet_isr1, IRQF_SHARED,
     dev->name, priv);
 if (ret < 0) {
  netdev_err(dev, "can't request IRQ %d\n", priv->irq1);
  goto err_irq0;
 }

 ret = bcmgenet_mii_probe(dev);
 if (ret) {
  netdev_err(dev, "failed to connect to PHY\n");
  goto err_irq1;
 }

 bcmgenet_netif_start(dev);

 netif_tx_start_all_queues(dev);

 return 0;

err_irq1:
 free_irq(priv->irq1, priv);
err_irq0:
 free_irq(priv->irq0, priv);
err_fini_dma:
 bcmgenet_dma_teardown(priv);
 bcmgenet_fini_dma(priv);
err_clk_disable:
 if (priv->internal_phy)
  bcmgenet_power_down(priv, GENET_POWER_PASSIVE);
 clk_disable_unprepare(priv->clk);
 return ret;
}
