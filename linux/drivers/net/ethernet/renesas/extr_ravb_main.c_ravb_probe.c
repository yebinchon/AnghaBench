
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u32 ;
struct resource {scalar_t__ start; } ;
struct ravb_private {int emac_irq; int* rx_irqs; int* tx_irqs; int chip_id; int desc_bat_size; int desc_bat_dma; TYPE_7__* desc_bat; int * napi; int msg_enable; int ts_skb_list; int num_tx_desc; int clk; void* avb_link_active_low; void* no_avb_link; int phy_interface; int work; int lock; int addr; int * num_rx_ring; int * num_tx_ring; struct platform_device* pdev; struct net_device* ndev; } ;
struct ravb_desc {int dummy; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_15__ {int parent; } ;
struct net_device {int irq; TYPE_1__ dev; int dev_addr; scalar_t__ base_addr; int * ethtool_ops; int * netdev_ops; int min_mtu; scalar_t__ max_mtu; void* hw_features; void* features; } ;
struct device_node {int dummy; } ;
typedef enum ravb_chip_id { ____Placeholder_ravb_chip_id } ravb_chip_id ;
struct TYPE_17__ {int die_dt; } ;


 int BE_RX_RING_SIZE ;
 int BE_TX_RING_SIZE ;
 int DBAT ;
 int DBAT_ENTRY_NUM ;
 int DT_EOS ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_MIN_MTU ;
 int GCCR ;
 int GCCR_LTI ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int NC_RX_RING_SIZE ;
 int NC_TX_RING_SIZE ;
 void* NETIF_F_RXCSUM ;
 int NUM_RX_QUEUE ;
 int NUM_TX_DESC_GEN2 ;
 int NUM_TX_DESC_GEN3 ;
 int NUM_TX_QUEUE ;
 int PTR_ERR (int ) ;
 size_t RAVB_BE ;
 int RAVB_DEF_MSG_ENABLE ;
 size_t RAVB_NC ;
 int RCAR_GEN2 ;
 int RCAR_GEN3 ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_2__*) ;
 scalar_t__ VLAN_HLEN ;
 struct net_device* alloc_etherdev_mqs (int,int,int) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_set_wakeup_capable (TYPE_2__*,int) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 TYPE_7__* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,TYPE_7__*,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int netdev_info (struct net_device*,char*,int ,int ,int) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_napi_del (int *) ;
 scalar_t__ of_device_get_match_data (TYPE_2__*) ;
 int of_get_mac_address (struct device_node*) ;
 int of_get_phy_mode (struct device_node*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int ravb_ethtool_ops ;
 int ravb_mdio_init (struct ravb_private*) ;
 int ravb_mdio_release (struct ravb_private*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_netdev_ops ;
 int ravb_poll ;
 int ravb_ptp_init (struct net_device*,struct platform_device*) ;
 int ravb_ptp_stop (struct net_device*) ;
 int ravb_read_mac_address (struct net_device*,int ) ;
 char** ravb_rx_irqs ;
 int ravb_set_config_mode (struct net_device*) ;
 int ravb_set_delay_mode (struct net_device*) ;
 int ravb_set_gti (struct net_device*) ;
 char** ravb_tx_irqs ;
 int ravb_tx_timeout_work ;
 int ravb_write (struct net_device*,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ravb_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct ravb_private *priv;
 enum ravb_chip_id chip_id;
 struct net_device *ndev;
 int error, irq, q;
 struct resource *res;
 int i;

 if (!np) {
  dev_err(&pdev->dev,
   "this driver is required to be instantiated from device tree\n");
  return -EINVAL;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "invalid resource\n");
  return -EINVAL;
 }

 ndev = alloc_etherdev_mqs(sizeof(struct ravb_private),
      NUM_TX_QUEUE, NUM_RX_QUEUE);
 if (!ndev)
  return -ENOMEM;

 ndev->features = NETIF_F_RXCSUM;
 ndev->hw_features = NETIF_F_RXCSUM;

 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);


 ndev->base_addr = res->start;

 chip_id = (enum ravb_chip_id)of_device_get_match_data(&pdev->dev);

 if (chip_id == RCAR_GEN3)
  irq = platform_get_irq_byname(pdev, "ch22");
 else
  irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  error = irq;
  goto out_release;
 }
 ndev->irq = irq;

 SET_NETDEV_DEV(ndev, &pdev->dev);

 priv = netdev_priv(ndev);
 priv->ndev = ndev;
 priv->pdev = pdev;
 priv->num_tx_ring[RAVB_BE] = BE_TX_RING_SIZE;
 priv->num_rx_ring[RAVB_BE] = BE_RX_RING_SIZE;
 priv->num_tx_ring[RAVB_NC] = NC_TX_RING_SIZE;
 priv->num_rx_ring[RAVB_NC] = NC_RX_RING_SIZE;
 priv->addr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->addr)) {
  error = PTR_ERR(priv->addr);
  goto out_release;
 }

 spin_lock_init(&priv->lock);
 INIT_WORK(&priv->work, ravb_tx_timeout_work);

 priv->phy_interface = of_get_phy_mode(np);

 priv->no_avb_link = of_property_read_bool(np, "renesas,no-ether-link");
 priv->avb_link_active_low =
  of_property_read_bool(np, "renesas,ether-link-active-low");

 if (chip_id == RCAR_GEN3) {
  irq = platform_get_irq_byname(pdev, "ch24");
  if (irq < 0) {
   error = irq;
   goto out_release;
  }
  priv->emac_irq = irq;
  for (i = 0; i < NUM_RX_QUEUE; i++) {
   irq = platform_get_irq_byname(pdev, ravb_rx_irqs[i]);
   if (irq < 0) {
    error = irq;
    goto out_release;
   }
   priv->rx_irqs[i] = irq;
  }
  for (i = 0; i < NUM_TX_QUEUE; i++) {
   irq = platform_get_irq_byname(pdev, ravb_tx_irqs[i]);
   if (irq < 0) {
    error = irq;
    goto out_release;
   }
   priv->tx_irqs[i] = irq;
  }
 }

 priv->chip_id = chip_id;

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  error = PTR_ERR(priv->clk);
  goto out_release;
 }

 ndev->max_mtu = 2048 - (ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN);
 ndev->min_mtu = ETH_MIN_MTU;

 priv->num_tx_desc = chip_id == RCAR_GEN2 ?
  NUM_TX_DESC_GEN2 : NUM_TX_DESC_GEN3;


 ndev->netdev_ops = &ravb_netdev_ops;
 ndev->ethtool_ops = &ravb_ethtool_ops;


 ravb_set_config_mode(ndev);


 error = ravb_set_gti(ndev);
 if (error)
  goto out_release;


 ravb_modify(ndev, GCCR, GCCR_LTI, GCCR_LTI);

 if (priv->chip_id != RCAR_GEN2)
  ravb_set_delay_mode(ndev);


 priv->desc_bat_size = sizeof(struct ravb_desc) * DBAT_ENTRY_NUM;
 priv->desc_bat = dma_alloc_coherent(ndev->dev.parent, priv->desc_bat_size,
         &priv->desc_bat_dma, GFP_KERNEL);
 if (!priv->desc_bat) {
  dev_err(&pdev->dev,
   "Cannot allocate desc base address table (size %d bytes)\n",
   priv->desc_bat_size);
  error = -ENOMEM;
  goto out_release;
 }
 for (q = RAVB_BE; q < DBAT_ENTRY_NUM; q++)
  priv->desc_bat[q].die_dt = DT_EOS;
 ravb_write(ndev, priv->desc_bat_dma, DBAT);


 INIT_LIST_HEAD(&priv->ts_skb_list);


 if (chip_id != RCAR_GEN2)
  ravb_ptp_init(ndev, pdev);


 priv->msg_enable = RAVB_DEF_MSG_ENABLE;


 ravb_read_mac_address(ndev, of_get_mac_address(np));
 if (!is_valid_ether_addr(ndev->dev_addr)) {
  dev_warn(&pdev->dev,
    "no valid MAC address supplied, using a random one\n");
  eth_hw_addr_random(ndev);
 }


 error = ravb_mdio_init(priv);
 if (error) {
  dev_err(&pdev->dev, "failed to initialize MDIO\n");
  goto out_dma_free;
 }

 netif_napi_add(ndev, &priv->napi[RAVB_BE], ravb_poll, 64);
 netif_napi_add(ndev, &priv->napi[RAVB_NC], ravb_poll, 64);


 error = register_netdev(ndev);
 if (error)
  goto out_napi_del;

 device_set_wakeup_capable(&pdev->dev, 1);


 netdev_info(ndev, "Base address at %#x, %pM, IRQ %d.\n",
      (u32)ndev->base_addr, ndev->dev_addr, ndev->irq);

 platform_set_drvdata(pdev, ndev);

 return 0;

out_napi_del:
 netif_napi_del(&priv->napi[RAVB_NC]);
 netif_napi_del(&priv->napi[RAVB_BE]);
 ravb_mdio_release(priv);
out_dma_free:
 dma_free_coherent(ndev->dev.parent, priv->desc_bat_size, priv->desc_bat,
     priv->desc_bat_dma);


 if (chip_id != RCAR_GEN2)
  ravb_ptp_stop(ndev);
out_release:
 free_netdev(ndev);

 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return error;
}
