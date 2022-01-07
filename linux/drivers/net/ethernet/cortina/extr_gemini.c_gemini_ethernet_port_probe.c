
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct net_device {unsigned int dev_id; int irq; int hw_features; int features; int dev_addr; scalar_t__ max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; } ;
struct gemini_ethernet_port {unsigned int id; int irq; struct net_device* netdev; struct device* dev; int * mac_addr; int napi; scalar_t__ freeq_refill; int config_lock; void* reset; void* pclk; void* gmac_base; void* dma_base; int msg_enable; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {struct gemini_ethernet_port* port1; struct gemini_ethernet_port* port0; } ;


 int DEFAULT_MSG_ENABLE ;
 int DEFAULT_NAPI_WEIGHT ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_MIN_MTU ;
 int GMAC_OFFLOAD_FEATURES ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int NETIF_F_GRO ;
 int PTR_ERR (void*) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int TX_QUEUE_NUM ;
 scalar_t__ VLAN_ETH_HLEN ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int clk_prepare_enable (void*) ;
 int debug ;
 int dev_dbg (struct device*,char*,int ,int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct gemini_ethernet* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,char*,struct gemini_ethernet_port*) ;
 void* devm_reset_control_get_exclusive (struct device*,int *) ;
 int eth_random_addr (int ) ;
 int free_netdev (struct net_device*) ;
 int gemini_ethernet_init (struct gemini_ethernet*) ;
 int gemini_port_irq ;
 int gemini_port_irq_thread ;
 int gemini_port_save_mac_addr (struct gemini_ethernet_port*) ;
 int gmac_351x_ethtool_ops ;
 int gmac_351x_ops ;
 int gmac_clear_hw_stats (struct net_device*) ;
 int gmac_napi_poll ;
 int gmac_setup_phy (struct net_device*) ;
 int gmac_write_mac_address (struct net_device*) ;
 scalar_t__ is_valid_ether_addr (void*) ;
 int memcpy (int ,int *,int ) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct gemini_ethernet_port*) ;
 int register_netdev (struct net_device*) ;
 int reset_control_reset (void*) ;
 int spin_lock_init (int *) ;
 int strcmp (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gemini_ethernet_port_probe(struct platform_device *pdev)
{
 char *port_names[2] = { "ethernet0", "ethernet1" };
 struct gemini_ethernet_port *port;
 struct device *dev = &pdev->dev;
 struct gemini_ethernet *geth;
 struct net_device *netdev;
 struct resource *gmacres;
 struct resource *dmares;
 struct device *parent;
 unsigned int id;
 int irq;
 int ret;

 parent = dev->parent;
 geth = dev_get_drvdata(parent);

 if (!strcmp(dev_name(dev), "60008000.ethernet-port"))
  id = 0;
 else if (!strcmp(dev_name(dev), "6000c000.ethernet-port"))
  id = 1;
 else
  return -ENODEV;

 dev_info(dev, "probe %s ID %d\n", dev_name(dev), id);

 netdev = alloc_etherdev_mq(sizeof(*port), TX_QUEUE_NUM);
 if (!netdev) {
  dev_err(dev, "Can't allocate ethernet device #%d\n", id);
  return -ENOMEM;
 }

 port = netdev_priv(netdev);
 SET_NETDEV_DEV(netdev, dev);
 port->netdev = netdev;
 port->id = id;
 port->geth = geth;
 port->dev = dev;
 port->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);


 dmares = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!dmares) {
  dev_err(dev, "no DMA resource\n");
  return -ENODEV;
 }
 port->dma_base = devm_ioremap_resource(dev, dmares);
 if (IS_ERR(port->dma_base))
  return PTR_ERR(port->dma_base);


 gmacres = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (!gmacres) {
  dev_err(dev, "no GMAC resource\n");
  return -ENODEV;
 }
 port->gmac_base = devm_ioremap_resource(dev, gmacres);
 if (IS_ERR(port->gmac_base))
  return PTR_ERR(port->gmac_base);


 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return irq ? irq : -ENODEV;
 port->irq = irq;


 port->pclk = devm_clk_get(dev, "PCLK");
 if (IS_ERR(port->pclk)) {
  dev_err(dev, "no PCLK\n");
  return PTR_ERR(port->pclk);
 }
 ret = clk_prepare_enable(port->pclk);
 if (ret)
  return ret;


 gemini_port_save_mac_addr(port);


 port->reset = devm_reset_control_get_exclusive(dev, ((void*)0));
 if (IS_ERR(port->reset)) {
  dev_err(dev, "no reset\n");
  return PTR_ERR(port->reset);
 }
 reset_control_reset(port->reset);
 usleep_range(100, 500);


 if (!id)
  geth->port0 = port;
 else
  geth->port1 = port;


 gemini_ethernet_init(geth);

 platform_set_drvdata(pdev, port);


 netdev->dev_id = port->id;
 netdev->irq = irq;
 netdev->netdev_ops = &gmac_351x_ops;
 netdev->ethtool_ops = &gmac_351x_ethtool_ops;

 spin_lock_init(&port->config_lock);
 gmac_clear_hw_stats(netdev);

 netdev->hw_features = GMAC_OFFLOAD_FEATURES;
 netdev->features |= GMAC_OFFLOAD_FEATURES | NETIF_F_GRO;



 netdev->min_mtu = ETH_MIN_MTU;
 netdev->max_mtu = 10236 - VLAN_ETH_HLEN;

 port->freeq_refill = 0;
 netif_napi_add(netdev, &port->napi, gmac_napi_poll,
         DEFAULT_NAPI_WEIGHT);

 if (is_valid_ether_addr((void *)port->mac_addr)) {
  memcpy(netdev->dev_addr, port->mac_addr, ETH_ALEN);
 } else {
  dev_dbg(dev, "ethernet address 0x%08x%08x%08x invalid\n",
   port->mac_addr[0], port->mac_addr[1],
   port->mac_addr[2]);
  dev_info(dev, "using a random ethernet address\n");
  eth_random_addr(netdev->dev_addr);
 }
 gmac_write_mac_address(netdev);

 ret = devm_request_threaded_irq(port->dev,
     port->irq,
     gemini_port_irq,
     gemini_port_irq_thread,
     IRQF_SHARED,
     port_names[port->id],
     port);
 if (ret)
  return ret;

 ret = register_netdev(netdev);
 if (!ret) {
  netdev_info(netdev,
       "irq %d, DMA @ 0x%pap, GMAC @ 0x%pap\n",
       port->irq, &dmares->start,
       &gmacres->start);
  ret = gmac_setup_phy(netdev);
  if (ret)
   netdev_info(netdev,
        "PHY init failed, deferring to ifup time\n");
  return 0;
 }

 port->netdev = ((void*)0);
 free_netdev(netdev);
 return ret;
}
