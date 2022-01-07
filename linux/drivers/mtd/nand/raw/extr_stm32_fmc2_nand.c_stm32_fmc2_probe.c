
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * ops; } ;
struct TYPE_5__ {int strength; int size; int mode; } ;
struct nand_chip {int options; TYPE_2__ ecc; TYPE_3__* controller; } ;
struct stm32_fmc2_nand {int ncs; struct nand_chip chip; } ;
struct stm32_fmc2_nfc {int cs_assigned; struct reset_control* clk; int dma_ecc_sg; int dma_data_sg; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; scalar_t__ dma_ecc_ch; TYPE_3__ base; struct stm32_fmc2_nand nand; int complete; struct reset_control** addr_base; struct reset_control** cmd_base; int * data_phys_addr; struct reset_control** data_base; int io_phys_addr; struct reset_control* io_base; struct device* dev; } ;
struct resource {int start; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;


 int BIT (int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FMC2_ECC_BCH8 ;
 int FMC2_ECC_STEP_SIZE ;
 int FMC2_MAX_CE ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int NAND_BUSWIDTH_AUTO ;
 int NAND_ECC_HW ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_USE_BOUNCE_BUFFER ;
 int PTR_ERR (struct reset_control*) ;
 int clk_disable_unprepare (struct reset_control*) ;
 int clk_prepare_enable (struct reset_control*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct reset_control* devm_clk_get (struct device*,int *) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct stm32_fmc2_nfc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct stm32_fmc2_nfc*) ;
 struct reset_control* devm_reset_control_get (struct device*,int *) ;
 int dma_release_channel (scalar_t__) ;
 int init_completion (int *) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_controller_init (TYPE_3__*) ;
 int nand_scan (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_fmc2_nfc*) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int sg_free_table (int *) ;
 int stm32_fmc2_dma_setup (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_init (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_irq ;
 int stm32_fmc2_nand_controller_ops ;
 int stm32_fmc2_parse_dt (struct stm32_fmc2_nfc*) ;

__attribute__((used)) static int stm32_fmc2_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct reset_control *rstc;
 struct stm32_fmc2_nfc *fmc2;
 struct stm32_fmc2_nand *nand;
 struct resource *res;
 struct mtd_info *mtd;
 struct nand_chip *chip;
 int chip_cs, mem_region, ret, irq;

 fmc2 = devm_kzalloc(dev, sizeof(*fmc2), GFP_KERNEL);
 if (!fmc2)
  return -ENOMEM;

 fmc2->dev = dev;
 nand_controller_init(&fmc2->base);
 fmc2->base.ops = &stm32_fmc2_nand_controller_ops;

 ret = stm32_fmc2_parse_dt(fmc2);
 if (ret)
  return ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fmc2->io_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(fmc2->io_base))
  return PTR_ERR(fmc2->io_base);

 fmc2->io_phys_addr = res->start;

 for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
      chip_cs++, mem_region += 3) {
  if (!(fmc2->cs_assigned & BIT(chip_cs)))
   continue;

  res = platform_get_resource(pdev, IORESOURCE_MEM, mem_region);
  fmc2->data_base[chip_cs] = devm_ioremap_resource(dev, res);
  if (IS_ERR(fmc2->data_base[chip_cs]))
   return PTR_ERR(fmc2->data_base[chip_cs]);

  fmc2->data_phys_addr[chip_cs] = res->start;

  res = platform_get_resource(pdev, IORESOURCE_MEM,
         mem_region + 1);
  fmc2->cmd_base[chip_cs] = devm_ioremap_resource(dev, res);
  if (IS_ERR(fmc2->cmd_base[chip_cs]))
   return PTR_ERR(fmc2->cmd_base[chip_cs]);

  res = platform_get_resource(pdev, IORESOURCE_MEM,
         mem_region + 2);
  fmc2->addr_base[chip_cs] = devm_ioremap_resource(dev, res);
  if (IS_ERR(fmc2->addr_base[chip_cs]))
   return PTR_ERR(fmc2->addr_base[chip_cs]);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  if (irq != -EPROBE_DEFER)
   dev_err(dev, "IRQ error missing or invalid\n");
  return irq;
 }

 ret = devm_request_irq(dev, irq, stm32_fmc2_irq, 0,
          dev_name(dev), fmc2);
 if (ret) {
  dev_err(dev, "failed to request irq\n");
  return ret;
 }

 init_completion(&fmc2->complete);

 fmc2->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(fmc2->clk))
  return PTR_ERR(fmc2->clk);

 ret = clk_prepare_enable(fmc2->clk);
 if (ret) {
  dev_err(dev, "can not enable the clock\n");
  return ret;
 }

 rstc = devm_reset_control_get(dev, ((void*)0));
 if (!IS_ERR(rstc)) {
  reset_control_assert(rstc);
  reset_control_deassert(rstc);
 }


 ret = stm32_fmc2_dma_setup(fmc2);
 if (ret)
  return ret;


 stm32_fmc2_init(fmc2);

 nand = &fmc2->nand;
 chip = &nand->chip;
 mtd = nand_to_mtd(chip);
 mtd->dev.parent = dev;

 chip->controller = &fmc2->base;
 chip->options |= NAND_BUSWIDTH_AUTO | NAND_NO_SUBPAGE_WRITE |
    NAND_USE_BOUNCE_BUFFER;


 chip->ecc.mode = NAND_ECC_HW;
 chip->ecc.size = FMC2_ECC_STEP_SIZE;
 chip->ecc.strength = FMC2_ECC_BCH8;


 ret = nand_scan(chip, nand->ncs);
 if (ret)
  goto err_scan;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret)
  goto err_device_register;

 platform_set_drvdata(pdev, fmc2);

 return 0;

err_device_register:
 nand_cleanup(chip);

err_scan:
 if (fmc2->dma_ecc_ch)
  dma_release_channel(fmc2->dma_ecc_ch);
 if (fmc2->dma_tx_ch)
  dma_release_channel(fmc2->dma_tx_ch);
 if (fmc2->dma_rx_ch)
  dma_release_channel(fmc2->dma_rx_ch);

 sg_free_table(&fmc2->dma_data_sg);
 sg_free_table(&fmc2->dma_ecc_sg);

 clk_disable_unprepare(fmc2->clk);

 return ret;
}
