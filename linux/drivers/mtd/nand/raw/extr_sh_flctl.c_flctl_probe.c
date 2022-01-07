
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct sh_flctl_platform_data {int flcmncr_val; int nr_parts; int parts; int use_holden; scalar_t__ has_hwecc; } ;
struct TYPE_14__ {int * ops; } ;
struct TYPE_15__ {int chip_delay; TYPE_2__ dummy_controller; void* get_features; void* set_features; int cmdfunc; int select_chip; int read_buf; int write_buf; int read_byte; } ;
struct nand_chip {int options; TYPE_3__ legacy; } ;
struct sh_flctl {int flcmncr_base; int flintdmacr_base; scalar_t__ hwecc; int holden; struct platform_device* pdev; struct nand_chip chip; scalar_t__ fifo; int reg; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_16__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_13__ {TYPE_4__* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;


 int ECERB ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int NAND_BBM_FIRSTPAGE ;
 int NAND_BBM_SECONDPAGE ;
 int NAND_BUSWIDTH_16 ;
 int PTR_ERR (int ) ;
 int SEL_16BIT ;
 int STERINTE ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct sh_flctl_platform_data* dev_get_platdata (TYPE_4__*) ;
 int devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct sh_flctl* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,char*,struct sh_flctl*) ;
 int flctl_cmdfunc ;
 int flctl_handle_flste ;
 int flctl_nand_controller_ops ;
 struct sh_flctl_platform_data* flctl_parse_dt (TYPE_4__*) ;
 int flctl_read_buf ;
 int flctl_read_byte ;
 int flctl_release_dma (struct sh_flctl*) ;
 int flctl_select_chip ;
 int flctl_setup_dma (struct sh_flctl*) ;
 int flctl_write_buf ;
 int mtd_device_register (struct mtd_info*,int ,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 void* nand_get_set_features_notsupp ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_flctl*) ;
 int pm_runtime_disable (TYPE_4__*) ;
 int pm_runtime_enable (TYPE_4__*) ;
 int pm_runtime_resume (TYPE_4__*) ;

__attribute__((used)) static int flctl_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct sh_flctl *flctl;
 struct mtd_info *flctl_mtd;
 struct nand_chip *nand;
 struct sh_flctl_platform_data *pdata;
 int ret;
 int irq;

 flctl = devm_kzalloc(&pdev->dev, sizeof(struct sh_flctl), GFP_KERNEL);
 if (!flctl)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 flctl->reg = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(flctl->reg))
  return PTR_ERR(flctl->reg);
 flctl->fifo = res->start + 0x24;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "failed to get flste irq data: %d\n", irq);
  return irq;
 }

 ret = devm_request_irq(&pdev->dev, irq, flctl_handle_flste, IRQF_SHARED,
          "flste", flctl);
 if (ret) {
  dev_err(&pdev->dev, "request interrupt failed.\n");
  return ret;
 }

 if (pdev->dev.of_node)
  pdata = flctl_parse_dt(&pdev->dev);
 else
  pdata = dev_get_platdata(&pdev->dev);

 if (!pdata) {
  dev_err(&pdev->dev, "no setup data defined\n");
  return -EINVAL;
 }

 platform_set_drvdata(pdev, flctl);
 nand = &flctl->chip;
 flctl_mtd = nand_to_mtd(nand);
 nand_set_flash_node(nand, pdev->dev.of_node);
 flctl_mtd->dev.parent = &pdev->dev;
 flctl->pdev = pdev;
 flctl->hwecc = pdata->has_hwecc;
 flctl->holden = pdata->use_holden;
 flctl->flcmncr_base = pdata->flcmncr_val;
 flctl->flintdmacr_base = flctl->hwecc ? (STERINTE | ECERB) : STERINTE;



 nand->legacy.chip_delay = 20;

 nand->legacy.read_byte = flctl_read_byte;
 nand->legacy.write_buf = flctl_write_buf;
 nand->legacy.read_buf = flctl_read_buf;
 nand->legacy.select_chip = flctl_select_chip;
 nand->legacy.cmdfunc = flctl_cmdfunc;
 nand->legacy.set_features = nand_get_set_features_notsupp;
 nand->legacy.get_features = nand_get_set_features_notsupp;

 if (pdata->flcmncr_val & SEL_16BIT)
  nand->options |= NAND_BUSWIDTH_16;

 nand->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;

 pm_runtime_enable(&pdev->dev);
 pm_runtime_resume(&pdev->dev);

 flctl_setup_dma(flctl);

 nand->legacy.dummy_controller.ops = &flctl_nand_controller_ops;
 ret = nand_scan(nand, 1);
 if (ret)
  goto err_chip;

 ret = mtd_device_register(flctl_mtd, pdata->parts, pdata->nr_parts);
 if (ret)
  goto cleanup_nand;

 return 0;

cleanup_nand:
 nand_cleanup(nand);
err_chip:
 flctl_release_dma(flctl);
 pm_runtime_disable(&pdev->dev);
 return ret;
}
