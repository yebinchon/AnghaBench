
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int cmd_ctrl; int chip_delay; void* IO_ADDR_R; void* IO_ADDR_W; int dev_ready; } ;
struct TYPE_6__ {int algo; int mode; } ;
struct nand_chip {TYPE_2__ legacy; int options; TYPE_1__ ecc; } ;
struct TYPE_8__ {struct device* parent; } ;
struct mtd_info {int size; TYPE_3__ dev; } ;
struct TYPE_9__ {int num_parts; int parts; int (* adjust_parts ) (TYPE_4__*,int ) ;int chip_delay; int options; } ;
struct gpiomtd {void* nce; void* nwp; TYPE_4__ plat; void* rdy; void* cle; void* ale; void* io_sync; struct nand_chip nand_chip; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_SOFT ;
 int PTR_ERR (void*) ;
 int dev_get_platdata (struct device*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct gpiomtd* devm_kzalloc (struct device*,int,int ) ;
 int gpio_nand_cmd_ctrl ;
 int gpio_nand_devready ;
 int gpio_nand_get_config (struct device*,TYPE_4__*) ;
 struct resource* gpio_nand_get_io_sync (struct platform_device*) ;
 int gpiod_direction_output (void*,int) ;
 int gpiod_set_value (void*,int ) ;
 int mtd_device_register (struct mtd_info*,int ,int ) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpiomtd*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static int gpio_nand_probe(struct platform_device *pdev)
{
 struct gpiomtd *gpiomtd;
 struct nand_chip *chip;
 struct mtd_info *mtd;
 struct resource *res;
 struct device *dev = &pdev->dev;
 int ret = 0;

 if (!dev->of_node && !dev_get_platdata(dev))
  return -EINVAL;

 gpiomtd = devm_kzalloc(dev, sizeof(*gpiomtd), GFP_KERNEL);
 if (!gpiomtd)
  return -ENOMEM;

 chip = &gpiomtd->nand_chip;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 chip->legacy.IO_ADDR_R = devm_ioremap_resource(dev, res);
 if (IS_ERR(chip->legacy.IO_ADDR_R))
  return PTR_ERR(chip->legacy.IO_ADDR_R);

 res = gpio_nand_get_io_sync(pdev);
 if (res) {
  gpiomtd->io_sync = devm_ioremap_resource(dev, res);
  if (IS_ERR(gpiomtd->io_sync))
   return PTR_ERR(gpiomtd->io_sync);
 }

 ret = gpio_nand_get_config(dev, &gpiomtd->plat);
 if (ret)
  return ret;


 gpiomtd->nce = devm_gpiod_get_optional(dev, "nce", GPIOD_OUT_HIGH);
 if (IS_ERR(gpiomtd->nce))
  return PTR_ERR(gpiomtd->nce);


 gpiomtd->nwp = devm_gpiod_get_optional(dev, "nwp", GPIOD_OUT_LOW);
 if (IS_ERR(gpiomtd->nwp)) {
  ret = PTR_ERR(gpiomtd->nwp);
  goto out_ce;
 }

 gpiomtd->ale = devm_gpiod_get(dev, "ale", GPIOD_OUT_LOW);
 if (IS_ERR(gpiomtd->ale)) {
  ret = PTR_ERR(gpiomtd->ale);
  goto out_ce;
 }

 gpiomtd->cle = devm_gpiod_get(dev, "cle", GPIOD_OUT_LOW);
 if (IS_ERR(gpiomtd->cle)) {
  ret = PTR_ERR(gpiomtd->cle);
  goto out_ce;
 }

 gpiomtd->rdy = devm_gpiod_get_optional(dev, "rdy", GPIOD_IN);
 if (IS_ERR(gpiomtd->rdy)) {
  ret = PTR_ERR(gpiomtd->rdy);
  goto out_ce;
 }

 if (gpiomtd->rdy)
  chip->legacy.dev_ready = gpio_nand_devready;

 nand_set_flash_node(chip, pdev->dev.of_node);
 chip->legacy.IO_ADDR_W = chip->legacy.IO_ADDR_R;
 chip->ecc.mode = NAND_ECC_SOFT;
 chip->ecc.algo = NAND_ECC_HAMMING;
 chip->options = gpiomtd->plat.options;
 chip->legacy.chip_delay = gpiomtd->plat.chip_delay;
 chip->legacy.cmd_ctrl = gpio_nand_cmd_ctrl;

 mtd = nand_to_mtd(chip);
 mtd->dev.parent = dev;

 platform_set_drvdata(pdev, gpiomtd);


 if (gpiomtd->nwp && !IS_ERR(gpiomtd->nwp))
  gpiod_direction_output(gpiomtd->nwp, 1);

 ret = nand_scan(chip, 1);
 if (ret)
  goto err_wp;

 if (gpiomtd->plat.adjust_parts)
  gpiomtd->plat.adjust_parts(&gpiomtd->plat, mtd->size);

 ret = mtd_device_register(mtd, gpiomtd->plat.parts,
      gpiomtd->plat.num_parts);
 if (!ret)
  return 0;

err_wp:
 if (gpiomtd->nwp && !IS_ERR(gpiomtd->nwp))
  gpiod_set_value(gpiomtd->nwp, 0);
out_ce:
 if (gpiomtd->nce && !IS_ERR(gpiomtd->nce))
  gpiod_set_value(gpiomtd->nce, 0);

 return ret;
}
