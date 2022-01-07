
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * ops; } ;
struct sunxi_nfc {int chips; TYPE_2__ controller; int assigned_cs; } ;
struct TYPE_7__ {int mode; } ;
struct nand_chip {TYPE_3__ ecc; TYPE_2__* controller; } ;
struct sunxi_nand_chip {int nsels; int node; struct nand_chip nand; TYPE_1__* sels; } ;
struct TYPE_8__ {struct device* parent; } ;
struct mtd_info {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int cs; int rb; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_ECC_HW ;
 int NFC_MAX_CS ;
 int dev_err (struct device*,char*,...) ;
 struct sunxi_nand_chip* devm_kzalloc (struct device*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_release (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int of_get_property (struct device_node*,char*,int*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int*) ;
 int sels ;
 int struct_size (struct sunxi_nand_chip*,int ,int) ;
 int sunxi_nand_controller_ops ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static int sunxi_nand_chip_init(struct device *dev, struct sunxi_nfc *nfc,
    struct device_node *np)
{
 struct sunxi_nand_chip *sunxi_nand;
 struct mtd_info *mtd;
 struct nand_chip *nand;
 int nsels;
 int ret;
 int i;
 u32 tmp;

 if (!of_get_property(np, "reg", &nsels))
  return -EINVAL;

 nsels /= sizeof(u32);
 if (!nsels) {
  dev_err(dev, "invalid reg property size\n");
  return -EINVAL;
 }

 sunxi_nand = devm_kzalloc(dev, struct_size(sunxi_nand, sels, nsels),
      GFP_KERNEL);
 if (!sunxi_nand) {
  dev_err(dev, "could not allocate chip\n");
  return -ENOMEM;
 }

 sunxi_nand->nsels = nsels;

 for (i = 0; i < nsels; i++) {
  ret = of_property_read_u32_index(np, "reg", i, &tmp);
  if (ret) {
   dev_err(dev, "could not retrieve reg property: %d\n",
    ret);
   return ret;
  }

  if (tmp > NFC_MAX_CS) {
   dev_err(dev,
    "invalid reg value: %u (max CS = 7)\n",
    tmp);
   return -EINVAL;
  }

  if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
   dev_err(dev, "CS %d already assigned\n", tmp);
   return -EINVAL;
  }

  sunxi_nand->sels[i].cs = tmp;

  if (!of_property_read_u32_index(np, "allwinner,rb", i, &tmp) &&
      tmp < 2)
   sunxi_nand->sels[i].rb = tmp;
  else
   sunxi_nand->sels[i].rb = -1;
 }

 nand = &sunxi_nand->nand;

 nand->controller = &nfc->controller;
 nand->controller->ops = &sunxi_nand_controller_ops;





 nand->ecc.mode = NAND_ECC_HW;
 nand_set_flash_node(nand, np);

 mtd = nand_to_mtd(nand);
 mtd->dev.parent = dev;

 ret = nand_scan(nand, nsels);
 if (ret)
  return ret;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret) {
  dev_err(dev, "failed to register mtd device: %d\n", ret);
  nand_release(nand);
  return ret;
 }

 list_add_tail(&sunxi_nand->node, &nfc->chips);

 return 0;
}
