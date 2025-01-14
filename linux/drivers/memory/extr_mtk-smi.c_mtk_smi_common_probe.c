
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_smi {void* base; void* clk_async; void* smi_ao_base; TYPE_1__* plat; void* clk_gals1; void* clk_gals0; void* clk_smi; void* clk_apb; struct device* dev; } ;
struct TYPE_2__ {scalar_t__ gen; scalar_t__ has_gals; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ MTK_SMI_GEN1 ;
 int PTR_ERR (void*) ;
 int clk_prepare_enable (void*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_smi* devm_kzalloc (struct device*,int,int ) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_smi*) ;
 int pm_runtime_enable (struct device*) ;

__attribute__((used)) static int mtk_smi_common_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_smi *common;
 struct resource *res;
 int ret;

 common = devm_kzalloc(dev, sizeof(*common), GFP_KERNEL);
 if (!common)
  return -ENOMEM;
 common->dev = dev;
 common->plat = of_device_get_match_data(dev);

 common->clk_apb = devm_clk_get(dev, "apb");
 if (IS_ERR(common->clk_apb))
  return PTR_ERR(common->clk_apb);

 common->clk_smi = devm_clk_get(dev, "smi");
 if (IS_ERR(common->clk_smi))
  return PTR_ERR(common->clk_smi);

 if (common->plat->has_gals) {
  common->clk_gals0 = devm_clk_get(dev, "gals0");
  if (IS_ERR(common->clk_gals0))
   return PTR_ERR(common->clk_gals0);

  common->clk_gals1 = devm_clk_get(dev, "gals1");
  if (IS_ERR(common->clk_gals1))
   return PTR_ERR(common->clk_gals1);
 }







 if (common->plat->gen == MTK_SMI_GEN1) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  common->smi_ao_base = devm_ioremap_resource(dev, res);
  if (IS_ERR(common->smi_ao_base))
   return PTR_ERR(common->smi_ao_base);

  common->clk_async = devm_clk_get(dev, "async");
  if (IS_ERR(common->clk_async))
   return PTR_ERR(common->clk_async);

  ret = clk_prepare_enable(common->clk_async);
  if (ret)
   return ret;
 } else {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  common->base = devm_ioremap_resource(dev, res);
  if (IS_ERR(common->base))
   return PTR_ERR(common->base);
 }
 pm_runtime_enable(dev);
 platform_set_drvdata(pdev, common);
 return 0;
}
