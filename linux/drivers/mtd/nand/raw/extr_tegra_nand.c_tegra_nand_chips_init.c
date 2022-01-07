
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_nand_controller {struct nand_chip* chip; int controller; } ;
struct nand_chip {int options; int * controller; } ;
struct tegra_nand_chip {int ecc; struct nand_chip chip; int wp_gpio; int * cs; } ;
struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {char* name; int owner; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_USE_BOUNCE_BUFFER ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct tegra_nand_chip* devm_kzalloc (struct device*,int,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,int *) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int of_get_child_count (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_property_count_elems_of_size (struct device_node*,char*,int) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int tegra_nand_chips_init(struct device *dev,
     struct tegra_nand_controller *ctrl)
{
 struct device_node *np = dev->of_node;
 struct device_node *np_nand;
 int nsels, nchips = of_get_child_count(np);
 struct tegra_nand_chip *nand;
 struct mtd_info *mtd;
 struct nand_chip *chip;
 int ret;
 u32 cs;

 if (nchips != 1) {
  dev_err(dev, "Currently only one NAND chip supported\n");
  return -EINVAL;
 }

 np_nand = of_get_next_child(np, ((void*)0));

 nsels = of_property_count_elems_of_size(np_nand, "reg", sizeof(u32));
 if (nsels != 1) {
  dev_err(dev, "Missing/invalid reg property\n");
  return -EINVAL;
 }


 ret = of_property_read_u32(np_nand, "reg", &cs);
 if (ret) {
  dev_err(dev, "could not retrieve reg property: %d\n", ret);
  return ret;
 }

 nand = devm_kzalloc(dev, sizeof(*nand), GFP_KERNEL);
 if (!nand)
  return -ENOMEM;

 nand->cs[0] = cs;

 nand->wp_gpio = devm_gpiod_get_optional(dev, "wp", GPIOD_OUT_LOW);

 if (IS_ERR(nand->wp_gpio)) {
  ret = PTR_ERR(nand->wp_gpio);
  dev_err(dev, "Failed to request WP GPIO: %d\n", ret);
  return ret;
 }

 chip = &nand->chip;
 chip->controller = &ctrl->controller;

 mtd = nand_to_mtd(chip);

 mtd->dev.parent = dev;
 mtd->owner = THIS_MODULE;

 nand_set_flash_node(chip, np_nand);

 if (!mtd->name)
  mtd->name = "tegra_nand";

 chip->options = NAND_NO_SUBPAGE_WRITE | NAND_USE_BOUNCE_BUFFER;

 ret = nand_scan(chip, 1);
 if (ret)
  return ret;

 mtd_ooblayout_ecc(mtd, 0, &nand->ecc);

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret) {
  dev_err(dev, "Failed to register mtd device: %d\n", ret);
  nand_cleanup(chip);
  return ret;
 }

 ctrl->chip = chip;

 return 0;
}
