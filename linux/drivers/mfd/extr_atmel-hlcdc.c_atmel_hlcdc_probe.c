
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_hlcdc_regmap {void* regs; } ;
struct atmel_hlcdc {scalar_t__ irq; void* regmap; void* slow_clk; void* sys_clk; void* periph_clk; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int atmel_hlcdc_cells ;
 int atmel_hlcdc_regmap_config ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct atmel_hlcdc*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int,int ,int ,int *,int ,int *) ;
 void* devm_regmap_init (struct device*,int *,struct atmel_hlcdc_regmap*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int atmel_hlcdc_probe(struct platform_device *pdev)
{
 struct atmel_hlcdc_regmap *hregmap;
 struct device *dev = &pdev->dev;
 struct atmel_hlcdc *hlcdc;
 struct resource *res;

 hregmap = devm_kzalloc(dev, sizeof(*hregmap), GFP_KERNEL);
 if (!hregmap)
  return -ENOMEM;

 hlcdc = devm_kzalloc(dev, sizeof(*hlcdc), GFP_KERNEL);
 if (!hlcdc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hregmap->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(hregmap->regs))
  return PTR_ERR(hregmap->regs);

 hlcdc->irq = platform_get_irq(pdev, 0);
 if (hlcdc->irq < 0)
  return hlcdc->irq;

 hlcdc->periph_clk = devm_clk_get(dev, "periph_clk");
 if (IS_ERR(hlcdc->periph_clk)) {
  dev_err(dev, "failed to get peripheral clock\n");
  return PTR_ERR(hlcdc->periph_clk);
 }

 hlcdc->sys_clk = devm_clk_get(dev, "sys_clk");
 if (IS_ERR(hlcdc->sys_clk)) {
  dev_err(dev, "failed to get system clock\n");
  return PTR_ERR(hlcdc->sys_clk);
 }

 hlcdc->slow_clk = devm_clk_get(dev, "slow_clk");
 if (IS_ERR(hlcdc->slow_clk)) {
  dev_err(dev, "failed to get slow clock\n");
  return PTR_ERR(hlcdc->slow_clk);
 }

 hlcdc->regmap = devm_regmap_init(dev, ((void*)0), hregmap,
      &atmel_hlcdc_regmap_config);
 if (IS_ERR(hlcdc->regmap))
  return PTR_ERR(hlcdc->regmap);

 dev_set_drvdata(dev, hlcdc);

 return devm_mfd_add_devices(dev, -1, atmel_hlcdc_cells,
        ARRAY_SIZE(atmel_hlcdc_cells),
        ((void*)0), 0, ((void*)0));
}
