
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct atmel_nand_controller_caps {scalar_t__ legacy_of_bindings; scalar_t__ has_dma; } ;
struct TYPE_4__ {int * ops; } ;
struct atmel_nand_controller {int smc; int mck; struct atmel_nand_controller_caps const* caps; struct device* dev; int dmac; int pmecc; int chips; TYPE_2__ base; } ;
typedef int dma_cap_mask_t ;
struct TYPE_3__ {int of_node; } ;


 int DMA_MEMCPY ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atmel_nand_avoid_dma ;
 int atmel_nand_controller_ops ;
 int dev_err (struct device*,char*,...) ;
 int devm_atmel_pmecc_get (struct device*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_channel (int ,int *,int *) ;
 int nand_controller_init (TYPE_2__*) ;
 int of_clk_get (int ,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_nand_controller*) ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int atmel_nand_controller_init(struct atmel_nand_controller *nc,
    struct platform_device *pdev,
    const struct atmel_nand_controller_caps *caps)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int ret;

 nand_controller_init(&nc->base);
 nc->base.ops = &atmel_nand_controller_ops;
 INIT_LIST_HEAD(&nc->chips);
 nc->dev = dev;
 nc->caps = caps;

 platform_set_drvdata(pdev, nc);

 nc->pmecc = devm_atmel_pmecc_get(dev);
 if (IS_ERR(nc->pmecc)) {
  ret = PTR_ERR(nc->pmecc);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Could not get PMECC object (err = %d)\n",
    ret);
  return ret;
 }

 if (nc->caps->has_dma && !atmel_nand_avoid_dma) {
  dma_cap_mask_t mask;

  dma_cap_zero(mask);
  dma_cap_set(DMA_MEMCPY, mask);

  nc->dmac = dma_request_channel(mask, ((void*)0), ((void*)0));
  if (!nc->dmac)
   dev_err(nc->dev, "Failed to request DMA channel\n");
 }


 if (nc->caps->legacy_of_bindings)
  return 0;

 nc->mck = of_clk_get(dev->parent->of_node, 0);
 if (IS_ERR(nc->mck)) {
  dev_err(dev, "Failed to retrieve MCK clk\n");
  return PTR_ERR(nc->mck);
 }

 np = of_parse_phandle(dev->parent->of_node, "atmel,smc", 0);
 if (!np) {
  dev_err(dev, "Missing or invalid atmel,smc property\n");
  return -EINVAL;
 }

 nc->smc = syscon_node_to_regmap(np);
 of_node_put(np);
 if (IS_ERR(nc->smc)) {
  ret = PTR_ERR(nc->smc);
  dev_err(dev, "Could not get SMC regmap (err = %d)\n", ret);
  return ret;
 }

 return 0;
}
