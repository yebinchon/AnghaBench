
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int * priv; } ;
struct TYPE_7__ {int chip_delay; int waitfunc; int dev_ready; int cmd_ctrl; scalar_t__ IO_ADDR_R; scalar_t__ IO_ADDR_W; } ;
struct nand_chip {int options; TYPE_3__ ecc; int bbt_options; TYPE_2__ legacy; TYPE_4__* controller; } ;
struct omap_nand_info {int devsize; int dma; scalar_t__ flash_bbt; scalar_t__ ready_gpiod; int phys_base; int gpmc_cs; struct nand_chip nand; int ops; int reg; struct platform_device* pdev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct mtd_info {scalar_t__ name; TYPE_1__ dev; } ;
struct TYPE_9__ {int * ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int IS_ERR_OR_NULL (int ) ;
 int NAND_BBT_USE_FLASH ;
 int NAND_BUSWIDTH_16 ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ devm_gpiod_get_optional (struct device*,char*,int ) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 scalar_t__ devm_kasprintf (struct device*,int ,char*,int ) ;
 struct omap_nand_info* devm_kzalloc (struct device*,int,int ) ;
 int dma_release_channel (int ) ;
 int gpmc_omap_get_nand_ops (int *,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_bch_free (int *) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_controller_init (TYPE_4__*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_dev_ready ;
 int omap_get_dt_info (struct device*,struct omap_nand_info*) ;
 TYPE_4__ omap_gpmc_controller ;
 int omap_gpmc_controller_initialized ;
 int omap_hwcontrol ;
 int omap_nand_controller_ops ;
 int omap_wait ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtd_info*) ;

__attribute__((used)) static int omap_nand_probe(struct platform_device *pdev)
{
 struct omap_nand_info *info;
 struct mtd_info *mtd;
 struct nand_chip *nand_chip;
 int err;
 struct resource *res;
 struct device *dev = &pdev->dev;

 info = devm_kzalloc(&pdev->dev, sizeof(struct omap_nand_info),
    GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->pdev = pdev;

 err = omap_get_dt_info(dev, info);
 if (err)
  return err;

 info->ops = gpmc_omap_get_nand_ops(&info->reg, info->gpmc_cs);
 if (!info->ops) {
  dev_err(&pdev->dev, "Failed to get GPMC->NAND interface\n");
  return -ENODEV;
 }

 nand_chip = &info->nand;
 mtd = nand_to_mtd(nand_chip);
 mtd->dev.parent = &pdev->dev;
 nand_chip->ecc.priv = ((void*)0);
 nand_set_flash_node(nand_chip, dev->of_node);

 if (!mtd->name) {
  mtd->name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
        "omap2-nand.%d", info->gpmc_cs);
  if (!mtd->name) {
   dev_err(&pdev->dev, "Failed to set MTD name\n");
   return -ENOMEM;
  }
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 nand_chip->legacy.IO_ADDR_R = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(nand_chip->legacy.IO_ADDR_R))
  return PTR_ERR(nand_chip->legacy.IO_ADDR_R);

 info->phys_base = res->start;

 if (!omap_gpmc_controller_initialized) {
  omap_gpmc_controller.ops = &omap_nand_controller_ops;
  nand_controller_init(&omap_gpmc_controller);
  omap_gpmc_controller_initialized = 1;
 }

 nand_chip->controller = &omap_gpmc_controller;

 nand_chip->legacy.IO_ADDR_W = nand_chip->legacy.IO_ADDR_R;
 nand_chip->legacy.cmd_ctrl = omap_hwcontrol;

 info->ready_gpiod = devm_gpiod_get_optional(&pdev->dev, "rb",
          GPIOD_IN);
 if (IS_ERR(info->ready_gpiod)) {
  dev_err(dev, "failed to get ready gpio\n");
  return PTR_ERR(info->ready_gpiod);
 }
 if (info->ready_gpiod) {
  nand_chip->legacy.dev_ready = omap_dev_ready;
  nand_chip->legacy.chip_delay = 0;
 } else {
  nand_chip->legacy.waitfunc = omap_wait;
  nand_chip->legacy.chip_delay = 50;
 }

 if (info->flash_bbt)
  nand_chip->bbt_options |= NAND_BBT_USE_FLASH;


 nand_chip->options |= info->devsize & NAND_BUSWIDTH_16;

 err = nand_scan(nand_chip, 1);
 if (err)
  goto return_error;

 err = mtd_device_register(mtd, ((void*)0), 0);
 if (err)
  goto cleanup_nand;

 platform_set_drvdata(pdev, mtd);

 return 0;

cleanup_nand:
 nand_cleanup(nand_chip);

return_error:
 if (!IS_ERR_OR_NULL(info->dma))
  dma_release_channel(info->dma);
 if (nand_chip->ecc.priv) {
  nand_bch_free(nand_chip->ecc.priv);
  nand_chip->ecc.priv = ((void*)0);
 }
 return err;
}
