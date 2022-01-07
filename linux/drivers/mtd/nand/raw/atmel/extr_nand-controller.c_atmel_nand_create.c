
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {int start; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int fwnode; } ;
struct atmel_nand_controller {int dev; } ;
struct atmel_nand {int numcs; int base; TYPE_3__* cs; struct gpio_desc* cdgpio; } ;
struct TYPE_5__ {struct gpio_desc* gpio; int type; scalar_t__ id; } ;
struct TYPE_4__ {struct gpio_desc* virt; int dma; } ;
struct TYPE_6__ {struct gpio_desc* csgpio; TYPE_2__ rb; TYPE_1__ io; scalar_t__ id; } ;


 int ATMEL_NAND_GPIO_RB ;
 int ATMEL_NAND_NATIVE_RB ;
 scalar_t__ ATMEL_NFC_MAX_RB_ID ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct atmel_nand* ERR_CAST (struct gpio_desc*) ;
 struct atmel_nand* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int cs ;
 int dev_err (int ,char*,...) ;
 struct gpio_desc* devm_fwnode_get_index_gpiod_from_child (int ,char*,int,int *,int ,char*) ;
 struct gpio_desc* devm_ioremap_resource (int ,struct resource*) ;
 struct atmel_nand* devm_kzalloc (int ,int ,int ) ;
 int nand_set_flash_node (int *,struct device_node*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_property_count_elems_of_size (struct device_node*,char*,int) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,scalar_t__*) ;
 int struct_size (struct atmel_nand*,int ,int) ;

__attribute__((used)) static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
         struct device_node *np,
         int reg_cells)
{
 struct atmel_nand *nand;
 struct gpio_desc *gpio;
 int numcs, ret, i;

 numcs = of_property_count_elems_of_size(np, "reg",
      reg_cells * sizeof(u32));
 if (numcs < 1) {
  dev_err(nc->dev, "Missing or invalid reg property\n");
  return ERR_PTR(-EINVAL);
 }

 nand = devm_kzalloc(nc->dev, struct_size(nand, cs, numcs), GFP_KERNEL);
 if (!nand) {
  dev_err(nc->dev, "Failed to allocate NAND object\n");
  return ERR_PTR(-ENOMEM);
 }

 nand->numcs = numcs;

 gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "det", 0,
            &np->fwnode, GPIOD_IN,
            "nand-det");
 if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
  dev_err(nc->dev,
   "Failed to get detect gpio (err = %ld)\n",
   PTR_ERR(gpio));
  return ERR_CAST(gpio);
 }

 if (!IS_ERR(gpio))
  nand->cdgpio = gpio;

 for (i = 0; i < numcs; i++) {
  struct resource res;
  u32 val;

  ret = of_address_to_resource(np, 0, &res);
  if (ret) {
   dev_err(nc->dev, "Invalid reg property (err = %d)\n",
    ret);
   return ERR_PTR(ret);
  }

  ret = of_property_read_u32_index(np, "reg", i * reg_cells,
       &val);
  if (ret) {
   dev_err(nc->dev, "Invalid reg property (err = %d)\n",
    ret);
   return ERR_PTR(ret);
  }

  nand->cs[i].id = val;

  nand->cs[i].io.dma = res.start;
  nand->cs[i].io.virt = devm_ioremap_resource(nc->dev, &res);
  if (IS_ERR(nand->cs[i].io.virt))
   return ERR_CAST(nand->cs[i].io.virt);

  if (!of_property_read_u32(np, "atmel,rb", &val)) {
   if (val > ATMEL_NFC_MAX_RB_ID)
    return ERR_PTR(-EINVAL);

   nand->cs[i].rb.type = ATMEL_NAND_NATIVE_RB;
   nand->cs[i].rb.id = val;
  } else {
   gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev,
       "rb", i, &np->fwnode,
       GPIOD_IN, "nand-rb");
   if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
    dev_err(nc->dev,
     "Failed to get R/B gpio (err = %ld)\n",
     PTR_ERR(gpio));
    return ERR_CAST(gpio);
   }

   if (!IS_ERR(gpio)) {
    nand->cs[i].rb.type = ATMEL_NAND_GPIO_RB;
    nand->cs[i].rb.gpio = gpio;
   }
  }

  gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "cs",
             i, &np->fwnode,
             GPIOD_OUT_HIGH,
             "nand-cs");
  if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
   dev_err(nc->dev,
    "Failed to get CS gpio (err = %ld)\n",
    PTR_ERR(gpio));
   return ERR_CAST(gpio);
  }

  if (!IS_ERR(gpio))
   nand->cs[i].csgpio = gpio;
 }

 nand_set_flash_node(&nand->base, np);

 return nand;
}
