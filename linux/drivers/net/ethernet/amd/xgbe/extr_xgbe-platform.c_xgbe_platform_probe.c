
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {int use_acpi; int per_channel_irq; int coherent; int irq_count; int dev_irq; int* channel_irq; unsigned int channel_irq_count; int an_irq; int netdev; struct platform_device* platdev; TYPE_1__* vdata; int rx_max_fifo_size; int tx_max_fifo_size; int awcr; int arcr; int channel_irq_mode; int phy_mode; int mac_addr; struct xgbe_prv_data* sir1_regs; struct xgbe_prv_data* sir0_regs; struct xgbe_prv_data* rxtx_regs; struct xgbe_prv_data* xpcs_regs; struct xgbe_prv_data* xgmac_regs; struct device* phy_dev; struct platform_device* phy_platdev; int adev; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;
struct TYPE_2__ {int rx_max_fifo_size; int tx_max_fifo_size; } ;


 int ACPI_COMPANION (struct device*) ;
 unsigned int ARRAY_SIZE (int*) ;
 int DEV_DMA_COHERENT ;
 int DEV_DMA_NOT_SUPPORTED ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct xgbe_prv_data*) ;
 int PHY_INTERFACE_MODE_XGMII ;
 int PTR_ERR (struct xgbe_prv_data*) ;
 int XGBE_DMA_IRQS_PROPERTY ;
 int XGBE_DMA_OS_ARCR ;
 int XGBE_DMA_OS_AWCR ;
 int XGBE_DMA_SYS_ARCR ;
 int XGBE_DMA_SYS_AWCR ;
 int XGBE_IRQ_MODE_EDGE ;
 int XGBE_MAC_ADDR_PROPERTY ;
 int XGBE_PHY_MODE_PROPERTY ;
 int dev_dbg (struct device*,char*,struct xgbe_prv_data*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_notice (struct device*,char*) ;
 int device_get_dma_attr (struct device*) ;
 scalar_t__ device_property_present (struct device*,int ) ;
 int device_property_read_string (struct device*,int ,char const**) ;
 int device_property_read_u8_array (struct device*,int ,int ,int) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int is_valid_ether_addr (int ) ;
 int netdev_notice (int ,char*) ;
 scalar_t__ netif_msg_probe (struct xgbe_prv_data*) ;
 int phy_modes (int ) ;
 int platform_device_put (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xgbe_prv_data*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int xgbe_acpi_support (struct xgbe_prv_data*) ;
 struct xgbe_prv_data* xgbe_alloc_pdata (struct device*) ;
 int xgbe_config_netdev (struct xgbe_prv_data*) ;
 int xgbe_free_pdata (struct xgbe_prv_data*) ;
 struct platform_device* xgbe_get_phy_pdev (struct xgbe_prv_data*) ;
 TYPE_1__* xgbe_get_vdata (struct xgbe_prv_data*) ;
 int xgbe_of_support (struct xgbe_prv_data*) ;
 int xgbe_resource_count (struct platform_device*,int ) ;
 int xgbe_set_counts (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_platform_probe(struct platform_device *pdev)
{
 struct xgbe_prv_data *pdata;
 struct device *dev = &pdev->dev;
 struct platform_device *phy_pdev;
 const char *phy_mode;
 unsigned int phy_memnum, phy_irqnum;
 unsigned int dma_irqnum, dma_irqend;
 enum dev_dma_attr attr;
 int ret;

 pdata = xgbe_alloc_pdata(dev);
 if (IS_ERR(pdata)) {
  ret = PTR_ERR(pdata);
  goto err_alloc;
 }

 pdata->platdev = pdev;
 pdata->adev = ACPI_COMPANION(dev);
 platform_set_drvdata(pdev, pdata);


 pdata->use_acpi = dev->of_node ? 0 : 1;


 pdata->vdata = xgbe_get_vdata(pdata);

 phy_pdev = xgbe_get_phy_pdev(pdata);
 if (!phy_pdev) {
  dev_err(dev, "unable to obtain phy device\n");
  ret = -EINVAL;
  goto err_phydev;
 }
 pdata->phy_platdev = phy_pdev;
 pdata->phy_dev = &phy_pdev->dev;

 if (pdev == phy_pdev) {




  phy_memnum = xgbe_resource_count(pdev, IORESOURCE_MEM) - 3;
  phy_irqnum = xgbe_resource_count(pdev, IORESOURCE_IRQ) - 1;
  dma_irqnum = 1;
  dma_irqend = phy_irqnum;
 } else {



  phy_memnum = 0;
  phy_irqnum = 0;
  dma_irqnum = 1;
  dma_irqend = xgbe_resource_count(pdev, IORESOURCE_IRQ);
 }


 pdata->xgmac_regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(pdata->xgmac_regs)) {
  dev_err(dev, "xgmac ioremap failed\n");
  ret = PTR_ERR(pdata->xgmac_regs);
  goto err_io;
 }
 if (netif_msg_probe(pdata))
  dev_dbg(dev, "xgmac_regs = %p\n", pdata->xgmac_regs);

 pdata->xpcs_regs = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(pdata->xpcs_regs)) {
  dev_err(dev, "xpcs ioremap failed\n");
  ret = PTR_ERR(pdata->xpcs_regs);
  goto err_io;
 }
 if (netif_msg_probe(pdata))
  dev_dbg(dev, "xpcs_regs  = %p\n", pdata->xpcs_regs);

 pdata->rxtx_regs = devm_platform_ioremap_resource(phy_pdev,
         phy_memnum++);
 if (IS_ERR(pdata->rxtx_regs)) {
  dev_err(dev, "rxtx ioremap failed\n");
  ret = PTR_ERR(pdata->rxtx_regs);
  goto err_io;
 }
 if (netif_msg_probe(pdata))
  dev_dbg(dev, "rxtx_regs  = %p\n", pdata->rxtx_regs);

 pdata->sir0_regs = devm_platform_ioremap_resource(phy_pdev,
         phy_memnum++);
 if (IS_ERR(pdata->sir0_regs)) {
  dev_err(dev, "sir0 ioremap failed\n");
  ret = PTR_ERR(pdata->sir0_regs);
  goto err_io;
 }
 if (netif_msg_probe(pdata))
  dev_dbg(dev, "sir0_regs  = %p\n", pdata->sir0_regs);

 pdata->sir1_regs = devm_platform_ioremap_resource(phy_pdev,
         phy_memnum++);
 if (IS_ERR(pdata->sir1_regs)) {
  dev_err(dev, "sir1 ioremap failed\n");
  ret = PTR_ERR(pdata->sir1_regs);
  goto err_io;
 }
 if (netif_msg_probe(pdata))
  dev_dbg(dev, "sir1_regs  = %p\n", pdata->sir1_regs);


 ret = device_property_read_u8_array(dev, XGBE_MAC_ADDR_PROPERTY,
         pdata->mac_addr,
         sizeof(pdata->mac_addr));
 if (ret || !is_valid_ether_addr(pdata->mac_addr)) {
  dev_err(dev, "invalid %s property\n", XGBE_MAC_ADDR_PROPERTY);
  if (!ret)
   ret = -EINVAL;
  goto err_io;
 }


 ret = device_property_read_string(dev, XGBE_PHY_MODE_PROPERTY,
       &phy_mode);
 if (ret || strcmp(phy_mode, phy_modes(PHY_INTERFACE_MODE_XGMII))) {
  dev_err(dev, "invalid %s property\n", XGBE_PHY_MODE_PROPERTY);
  if (!ret)
   ret = -EINVAL;
  goto err_io;
 }
 pdata->phy_mode = PHY_INTERFACE_MODE_XGMII;


 if (device_property_present(dev, XGBE_DMA_IRQS_PROPERTY)) {
  pdata->per_channel_irq = 1;
  pdata->channel_irq_mode = XGBE_IRQ_MODE_EDGE;
 }


 if (pdata->use_acpi)
  ret = xgbe_acpi_support(pdata);
 else
  ret = xgbe_of_support(pdata);
 if (ret)
  goto err_io;


 attr = device_get_dma_attr(dev);
 if (attr == DEV_DMA_NOT_SUPPORTED) {
  dev_err(dev, "DMA is not supported");
  ret = -ENODEV;
  goto err_io;
 }
 pdata->coherent = (attr == DEV_DMA_COHERENT);
 if (pdata->coherent) {
  pdata->arcr = XGBE_DMA_OS_ARCR;
  pdata->awcr = XGBE_DMA_OS_AWCR;
 } else {
  pdata->arcr = XGBE_DMA_SYS_ARCR;
  pdata->awcr = XGBE_DMA_SYS_AWCR;
 }


 pdata->tx_max_fifo_size = pdata->vdata->tx_max_fifo_size;
 pdata->rx_max_fifo_size = pdata->vdata->rx_max_fifo_size;


 xgbe_set_counts(pdata);


 pdata->irq_count = 2;


 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto err_io;
 pdata->dev_irq = ret;


 if (pdata->per_channel_irq) {
  unsigned int i, max = ARRAY_SIZE(pdata->channel_irq);

  for (i = 0; (i < max) && (dma_irqnum < dma_irqend); i++) {
   ret = platform_get_irq(pdata->platdev, dma_irqnum++);
   if (ret < 0)
    goto err_io;

   pdata->channel_irq[i] = ret;
  }

  pdata->channel_irq_count = max;

  pdata->irq_count += max;
 }


 ret = platform_get_irq(phy_pdev, phy_irqnum++);
 if (ret < 0)
  goto err_io;
 pdata->an_irq = ret;


 ret = xgbe_config_netdev(pdata);
 if (ret)
  goto err_io;

 netdev_notice(pdata->netdev, "net device enabled\n");

 return 0;

err_io:
 platform_device_put(phy_pdev);

err_phydev:
 xgbe_free_pdata(pdata);

err_alloc:
 dev_notice(dev, "net device not enabled\n");

 return ret;
}
