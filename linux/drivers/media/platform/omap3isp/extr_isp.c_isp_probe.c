
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_18__ {int of_node; } ;
struct platform_device {TYPE_7__ dev; } ;
struct TYPE_16__ {int * ops; } ;
struct TYPE_15__ {void* vdd; } ;
struct TYPE_14__ {void* vdd; } ;
struct isp_device {int revision; int irq_num; int isp_mutex; TYPE_3__ notifier; int v4l2_dev; TYPE_7__* dev; scalar_t__ mmio_hist_base_phys; scalar_t__* mmio_base; int * clock; TYPE_2__ isp_csiphy2; TYPE_1__ isp_csiphy1; scalar_t__ ref_count; int stat_lock; int autoidle; int syscon_offset; scalar_t__ syscon; int phy_type; } ;
struct TYPE_17__ {int isp_rev; scalar_t__* offset; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 size_t ISP_CLK_CAM_ICK ;
 int ISP_REVISION ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int OMAP3_ISP_IOMEM_CSI2A_REGS1 ;
 int OMAP3_ISP_IOMEM_CSIPHY2 ;
 size_t OMAP3_ISP_IOMEM_HIST ;
 int OMAP3_ISP_IOMEM_LAST ;
 int OMAP3_ISP_IOMEM_MAIN ;
 int PTR_ERR (scalar_t__) ;
 int * __omap3isp_get (struct isp_device*,int) ;
 int __omap3isp_put (struct isp_device*,int) ;
 int autoidle ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (TYPE_7__*,char*,...) ;
 int dev_info (TYPE_7__*,char*,int,int) ;
 scalar_t__ devm_ioremap_resource (TYPE_7__*,struct resource*) ;
 void* devm_regulator_get (TYPE_7__*,char*) ;
 scalar_t__ devm_request_irq (TYPE_7__*,int,int ,int ,char*,struct isp_device*) ;
 int dma_coerce_mask_and_coherent (TYPE_7__*,int ) ;
 int fwnode_property_read_u32 (int ,char*,int *) ;
 int isp_attach_iommu (struct isp_device*) ;
 int isp_cleanup_modules (struct isp_device*) ;
 int isp_core_init (struct isp_device*,int) ;
 int isp_create_links (struct isp_device*) ;
 int isp_detach_iommu (struct isp_device*) ;
 int isp_get_clocks (struct isp_device*) ;
 int isp_initialize_modules (struct isp_device*) ;
 int isp_isr ;
 int isp_parse_of_endpoints (struct isp_device*) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_register_entities (struct isp_device*) ;
 TYPE_6__* isp_res_maps ;
 int isp_reset (struct isp_device*) ;
 int isp_subdev_notifier_ops ;
 int isp_unregister_entities (struct isp_device*) ;
 int isp_xclk_cleanup (struct isp_device*) ;
 int isp_xclk_init (struct isp_device*) ;
 int kfree (struct isp_device*) ;
 struct isp_device* kzalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int of_fwnode_handle (int ) ;
 int of_property_read_u32_index (int ,char*,int,int *) ;
 int omap3isp_put (struct isp_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct isp_device*) ;
 int spin_lock_init (int *) ;
 scalar_t__ syscon_regmap_lookup_by_phandle (int ,char*) ;
 int v4l2_async_notifier_cleanup (TYPE_3__*) ;
 int v4l2_async_notifier_init (TYPE_3__*) ;
 int v4l2_async_notifier_register (int *,TYPE_3__*) ;

__attribute__((used)) static int isp_probe(struct platform_device *pdev)
{
 struct isp_device *isp;
 struct resource *mem;
 int ret;
 int i, m;

 isp = kzalloc(sizeof(*isp), GFP_KERNEL);
 if (!isp) {
  dev_err(&pdev->dev, "could not allocate memory\n");
  return -ENOMEM;
 }

 ret = fwnode_property_read_u32(of_fwnode_handle(pdev->dev.of_node),
           "ti,phy-type", &isp->phy_type);
 if (ret)
  goto error_release_isp;

 isp->syscon = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
            "syscon");
 if (IS_ERR(isp->syscon)) {
  ret = PTR_ERR(isp->syscon);
  goto error_release_isp;
 }

 ret = of_property_read_u32_index(pdev->dev.of_node,
      "syscon", 1, &isp->syscon_offset);
 if (ret)
  goto error_release_isp;

 isp->autoidle = autoidle;

 mutex_init(&isp->isp_mutex);
 spin_lock_init(&isp->stat_lock);
 v4l2_async_notifier_init(&isp->notifier);
 isp->dev = &pdev->dev;

 ret = isp_parse_of_endpoints(isp);
 if (ret < 0)
  goto error;

 isp->ref_count = 0;

 ret = dma_coerce_mask_and_coherent(isp->dev, DMA_BIT_MASK(32));
 if (ret)
  goto error;

 platform_set_drvdata(pdev, isp);


 isp->isp_csiphy1.vdd = devm_regulator_get(&pdev->dev, "vdd-csiphy1");
 isp->isp_csiphy2.vdd = devm_regulator_get(&pdev->dev, "vdd-csiphy2");
 for (i = 0; i < 2; i++) {
  unsigned int map_idx = i ? OMAP3_ISP_IOMEM_CSI2A_REGS1 : 0;

  mem = platform_get_resource(pdev, IORESOURCE_MEM, i);
  isp->mmio_base[map_idx] =
   devm_ioremap_resource(isp->dev, mem);
  if (IS_ERR(isp->mmio_base[map_idx]))
   return PTR_ERR(isp->mmio_base[map_idx]);
 }

 ret = isp_get_clocks(isp);
 if (ret < 0)
  goto error;

 ret = clk_enable(isp->clock[ISP_CLK_CAM_ICK]);
 if (ret < 0)
  goto error;

 isp->revision = isp_reg_readl(isp, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
 dev_info(isp->dev, "Revision %d.%d found\n",
   (isp->revision & 0xf0) >> 4, isp->revision & 0x0f);

 clk_disable(isp->clock[ISP_CLK_CAM_ICK]);

 if (__omap3isp_get(isp, 0) == ((void*)0)) {
  ret = -ENODEV;
  goto error;
 }

 ret = isp_reset(isp);
 if (ret < 0)
  goto error_isp;

 ret = isp_xclk_init(isp);
 if (ret < 0)
  goto error_isp;


 for (m = 0; m < ARRAY_SIZE(isp_res_maps); m++)
  if (isp->revision == isp_res_maps[m].isp_rev)
   break;

 if (m == ARRAY_SIZE(isp_res_maps)) {
  dev_err(isp->dev, "No resource map found for ISP rev %d.%d\n",
   (isp->revision & 0xf0) >> 4, isp->revision & 0xf);
  ret = -ENODEV;
  goto error_isp;
 }

 for (i = 1; i < OMAP3_ISP_IOMEM_CSI2A_REGS1; i++)
  isp->mmio_base[i] =
   isp->mmio_base[0] + isp_res_maps[m].offset[i];

 for (i = OMAP3_ISP_IOMEM_CSIPHY2; i < OMAP3_ISP_IOMEM_LAST; i++)
  isp->mmio_base[i] =
   isp->mmio_base[OMAP3_ISP_IOMEM_CSI2A_REGS1]
   + isp_res_maps[m].offset[i];

 isp->mmio_hist_base_phys =
  mem->start + isp_res_maps[m].offset[OMAP3_ISP_IOMEM_HIST];


 ret = isp_attach_iommu(isp);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to attach to IOMMU\n");
  goto error_isp;
 }


 ret = platform_get_irq(pdev, 0);
 if (ret <= 0) {
  ret = -ENODEV;
  goto error_iommu;
 }
 isp->irq_num = ret;

 if (devm_request_irq(isp->dev, isp->irq_num, isp_isr, IRQF_SHARED,
        "OMAP3 ISP", isp)) {
  dev_err(isp->dev, "Unable to request IRQ\n");
  ret = -EINVAL;
  goto error_iommu;
 }


 ret = isp_initialize_modules(isp);
 if (ret < 0)
  goto error_iommu;

 ret = isp_register_entities(isp);
 if (ret < 0)
  goto error_modules;

 ret = isp_create_links(isp);
 if (ret < 0)
  goto error_register_entities;

 isp->notifier.ops = &isp_subdev_notifier_ops;

 ret = v4l2_async_notifier_register(&isp->v4l2_dev, &isp->notifier);
 if (ret)
  goto error_register_entities;

 isp_core_init(isp, 1);
 omap3isp_put(isp);

 return 0;

error_register_entities:
 isp_unregister_entities(isp);
error_modules:
 isp_cleanup_modules(isp);
error_iommu:
 isp_detach_iommu(isp);
error_isp:
 isp_xclk_cleanup(isp);
 __omap3isp_put(isp, 0);
error:
 v4l2_async_notifier_cleanup(&isp->notifier);
 mutex_destroy(&isp->isp_mutex);
error_release_isp:
 kfree(isp);

 return ret;
}
