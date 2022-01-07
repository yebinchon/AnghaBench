
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct atmel_flexcom {scalar_t__ opmode; scalar_t__ clk; scalar_t__ base; } ;


 scalar_t__ ATMEL_FLEXCOM_MODE_TWI ;
 scalar_t__ ATMEL_FLEXCOM_MODE_USART ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FLEX_MR ;
 int FLEX_MR_OPMODE (scalar_t__) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 scalar_t__ devm_clk_get (TYPE_1__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct atmel_flexcom* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_of_platform_populate (TYPE_1__*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_flexcom*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int atmel_flexcom_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 struct atmel_flexcom *ddata;
 int err;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);

 err = of_property_read_u32(np, "atmel,flexcom-mode", &ddata->opmode);
 if (err)
  return err;

 if (ddata->opmode < ATMEL_FLEXCOM_MODE_USART ||
     ddata->opmode > ATMEL_FLEXCOM_MODE_TWI)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ddata->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ddata->base))
  return PTR_ERR(ddata->base);

 ddata->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(ddata->clk))
  return PTR_ERR(ddata->clk);

 err = clk_prepare_enable(ddata->clk);
 if (err)
  return err;







 writel(FLEX_MR_OPMODE(ddata->opmode), ddata->base + FLEX_MR);

 clk_disable_unprepare(ddata->clk);

 return devm_of_platform_populate(&pdev->dev);
}
