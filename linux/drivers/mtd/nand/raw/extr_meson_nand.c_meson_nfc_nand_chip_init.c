
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nand_chip {int options; TYPE_1__* controller; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_2__ dev; int owner; } ;
struct meson_nfc_nand_chip {int nsels; int node; struct nand_chip nand; } ;
struct TYPE_3__ {int * ops; } ;
struct meson_nfc {int chips; TYPE_1__ controller; int assigned_cs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CE_NUM ;
 int NAND_USE_BOUNCE_BUFFER ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,...) ;
 struct meson_nfc_nand_chip* devm_kzalloc (struct device*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int meson_nand_controller_ops ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_controller_data (struct nand_chip*,struct meson_nfc*) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int of_property_count_elems_of_size (struct device_node*,char*,int) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int*) ;
 int sels ;
 int struct_size (struct meson_nfc_nand_chip*,int ,int) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static int
meson_nfc_nand_chip_init(struct device *dev,
    struct meson_nfc *nfc, struct device_node *np)
{
 struct meson_nfc_nand_chip *meson_chip;
 struct nand_chip *nand;
 struct mtd_info *mtd;
 int ret, i;
 u32 tmp, nsels;

 nsels = of_property_count_elems_of_size(np, "reg", sizeof(u32));
 if (!nsels || nsels > MAX_CE_NUM) {
  dev_err(dev, "invalid register property size\n");
  return -EINVAL;
 }

 meson_chip = devm_kzalloc(dev, struct_size(meson_chip, sels, nsels),
      GFP_KERNEL);
 if (!meson_chip)
  return -ENOMEM;

 meson_chip->nsels = nsels;

 for (i = 0; i < nsels; i++) {
  ret = of_property_read_u32_index(np, "reg", i, &tmp);
  if (ret) {
   dev_err(dev, "could not retrieve register property: %d\n",
    ret);
   return ret;
  }

  if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
   dev_err(dev, "CS %d already assigned\n", tmp);
   return -EINVAL;
  }
 }

 nand = &meson_chip->nand;
 nand->controller = &nfc->controller;
 nand->controller->ops = &meson_nand_controller_ops;
 nand_set_flash_node(nand, np);
 nand_set_controller_data(nand, nfc);

 nand->options |= NAND_USE_BOUNCE_BUFFER;
 mtd = nand_to_mtd(nand);
 mtd->owner = THIS_MODULE;
 mtd->dev.parent = dev;

 ret = nand_scan(nand, nsels);
 if (ret)
  return ret;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret) {
  dev_err(dev, "failed to register MTD device: %d\n", ret);
  nand_cleanup(nand);
  return ret;
 }

 list_add_tail(&meson_chip->node, &nfc->chips);

 return 0;
}
