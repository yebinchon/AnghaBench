
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ irq; } ;
struct TYPE_8__ {int napi; TYPE_2__ dma; } ;
struct TYPE_5__ {scalar_t__ irq; } ;
struct TYPE_7__ {int napi; TYPE_1__ dma; } ;
struct xrx200_priv {int const* clk; TYPE_4__ chan_tx; TYPE_3__ chan_rx; int const* pmac_reg; struct device* dev; struct net_device* net_dev; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct net_device {int dev_addr; int max_mtu; int min_mtu; int * netdev_ops; } ;
struct device_node {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int ETH_ZLEN ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int const*) ;
 int PMAC_HD_CTL ;
 int PMAC_HD_CTL_AC ;
 int PMAC_HD_CTL_AS ;
 int PMAC_HD_CTL_AST ;
 int PMAC_HD_CTL_RC ;
 int PMAC_HD_CTL_RST ;
 int PMAC_HD_CTL_RXSH ;
 int PMAC_RX_IPG ;
 int PMAC_RX_IPG_MASK ;
 int PTR_ERR (int const*) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int XRX200_DMA_DATA_LEN ;
 int clk_disable_unprepare (int const*) ;
 int clk_prepare_enable (int const*) ;
 int dev_err (struct device*,char*) ;
 struct net_device* devm_alloc_etherdev (struct device*,int) ;
 int const* devm_clk_get (struct device*,int *) ;
 int const* devm_ioremap_resource (struct device*,struct resource*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int const*) ;
 struct xrx200_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int * of_get_mac_address (struct device_node*) ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xrx200_priv*) ;
 int register_netdev (struct net_device*) ;
 int xrx200_dma_init (struct xrx200_priv*) ;
 int xrx200_hw_cleanup (struct xrx200_priv*) ;
 int xrx200_netdev_ops ;
 int xrx200_pmac_mask (struct xrx200_priv*,int ,int,int ) ;
 int xrx200_poll_rx ;
 int xrx200_tx_housekeeping ;

__attribute__((used)) static int xrx200_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct resource *res;
 struct xrx200_priv *priv;
 struct net_device *net_dev;
 const u8 *mac;
 int err;


 net_dev = devm_alloc_etherdev(dev, sizeof(struct xrx200_priv));
 if (!net_dev)
  return -ENOMEM;

 priv = netdev_priv(net_dev);
 priv->net_dev = net_dev;
 priv->dev = dev;

 net_dev->netdev_ops = &xrx200_netdev_ops;
 SET_NETDEV_DEV(net_dev, dev);
 net_dev->min_mtu = ETH_ZLEN;
 net_dev->max_mtu = XRX200_DMA_DATA_LEN;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "failed to get resources\n");
  return -ENOENT;
 }

 priv->pmac_reg = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->pmac_reg)) {
  dev_err(dev, "failed to request and remap io ranges\n");
  return PTR_ERR(priv->pmac_reg);
 }

 priv->chan_rx.dma.irq = platform_get_irq_byname(pdev, "rx");
 if (priv->chan_rx.dma.irq < 0)
  return -ENOENT;
 priv->chan_tx.dma.irq = platform_get_irq_byname(pdev, "tx");
 if (priv->chan_tx.dma.irq < 0)
  return -ENOENT;


 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(priv->clk);
 }

 mac = of_get_mac_address(np);
 if (!IS_ERR(mac))
  ether_addr_copy(net_dev->dev_addr, mac);
 else
  eth_hw_addr_random(net_dev);


 err = xrx200_dma_init(priv);
 if (err)
  return err;


 err = clk_prepare_enable(priv->clk);
 if (err)
  goto err_uninit_dma;


 xrx200_pmac_mask(priv, PMAC_RX_IPG_MASK, 0xb, PMAC_RX_IPG);


 xrx200_pmac_mask(priv, 0,
    PMAC_HD_CTL_RST | PMAC_HD_CTL_AST | PMAC_HD_CTL_RXSH |
    PMAC_HD_CTL_AS | PMAC_HD_CTL_AC | PMAC_HD_CTL_RC,
    PMAC_HD_CTL);


 netif_napi_add(net_dev, &priv->chan_rx.napi, xrx200_poll_rx, 32);
 netif_napi_add(net_dev, &priv->chan_tx.napi, xrx200_tx_housekeeping, 32);

 platform_set_drvdata(pdev, priv);

 err = register_netdev(net_dev);
 if (err)
  goto err_unprepare_clk;

 return 0;

err_unprepare_clk:
 clk_disable_unprepare(priv->clk);

err_uninit_dma:
 xrx200_hw_cleanup(priv);

 return err;
}
