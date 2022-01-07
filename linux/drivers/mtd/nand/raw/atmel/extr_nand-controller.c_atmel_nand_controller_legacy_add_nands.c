
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct device {int of_node; } ;
struct atmel_nand_controller {struct device* dev; } ;
struct atmel_nand {int numcs; int base; struct gpio_desc* cdgpio; TYPE_3__* cs; } ;
struct TYPE_5__ {struct gpio_desc* gpio; int type; } ;
struct TYPE_4__ {int dma; struct gpio_desc* virt; } ;
struct TYPE_6__ {int id; struct gpio_desc* csgpio; TYPE_2__ rb; TYPE_1__ io; } ;


 int ATMEL_NAND_GPIO_RB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int atmel_nand_controller_add_nand (struct atmel_nand_controller*,struct atmel_nand*) ;
 int dev_err (struct device*,char*,int) ;
 struct gpio_desc* devm_gpiod_get_index_optional (struct device*,int *,int,int ) ;
 struct gpio_desc* devm_ioremap_resource (struct device*,struct resource*) ;
 struct atmel_nand* devm_kzalloc (struct device*,int,int ) ;
 int nand_set_flash_node (int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int
atmel_nand_controller_legacy_add_nands(struct atmel_nand_controller *nc)
{
 struct device *dev = nc->dev;
 struct platform_device *pdev = to_platform_device(dev);
 struct atmel_nand *nand;
 struct gpio_desc *gpio;
 struct resource *res;





 nand = devm_kzalloc(nc->dev, sizeof(*nand) + sizeof(*nand->cs),
       GFP_KERNEL);
 if (!nand)
  return -ENOMEM;

 nand->numcs = 1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 nand->cs[0].io.virt = devm_ioremap_resource(dev, res);
 if (IS_ERR(nand->cs[0].io.virt))
  return PTR_ERR(nand->cs[0].io.virt);

 nand->cs[0].io.dma = res->start;
 nand->cs[0].id = 3;


 gpio = devm_gpiod_get_index_optional(dev, ((void*)0), 0, GPIOD_IN);
 if (IS_ERR(gpio)) {
  dev_err(dev, "Failed to get R/B gpio (err = %ld)\n",
   PTR_ERR(gpio));
  return PTR_ERR(gpio);
 }

 if (gpio) {
  nand->cs[0].rb.type = ATMEL_NAND_GPIO_RB;
  nand->cs[0].rb.gpio = gpio;
 }


 gpio = devm_gpiod_get_index_optional(dev, ((void*)0), 1, GPIOD_OUT_HIGH);
 if (IS_ERR(gpio)) {
  dev_err(dev, "Failed to get CS gpio (err = %ld)\n",
   PTR_ERR(gpio));
  return PTR_ERR(gpio);
 }

 nand->cs[0].csgpio = gpio;


 gpio = devm_gpiod_get_index_optional(nc->dev, ((void*)0), 2, GPIOD_IN);
 if (IS_ERR(gpio)) {
  dev_err(dev,
   "Failed to get detect gpio (err = %ld)\n",
   PTR_ERR(gpio));
  return PTR_ERR(gpio);
 }

 nand->cdgpio = gpio;

 nand_set_flash_node(&nand->base, nc->dev->of_node);

 return atmel_nand_controller_add_nand(nc, nand);
}
