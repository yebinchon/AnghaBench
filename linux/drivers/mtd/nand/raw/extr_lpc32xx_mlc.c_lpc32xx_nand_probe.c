
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_17__ {int of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_14__ {int * ops; } ;
struct TYPE_15__ {int chip_delay; TYPE_3__ dummy_controller; int waitfunc; void* IO_ADDR_W; void* IO_ADDR_R; int dev_ready; int cmd_ctrl; } ;
struct TYPE_13__ {int strength; int bytes; int read_oob; int write_oob; void* write_page; void* write_page_raw; void* read_page; void* read_page_raw; int hwctl; } ;
struct nand_chip {int bbt_options; TYPE_4__ legacy; int * bbt_md; int * bbt_td; int options; TYPE_2__ ecc; } ;
struct TYPE_12__ {TYPE_6__* parent; } ;
struct mtd_info {int name; TYPE_1__ dev; } ;
struct lpc32xx_nand_host {scalar_t__ irq; TYPE_5__* ncfg; int clk; int dma_chan; int comp_controller; int comp_nand; int io_base; int pdata; struct nand_chip nand_chip; int io_base_phy; struct platform_device* pdev; } ;
typedef int irq_handler_t ;
struct TYPE_16__ {int wp_gpio; int num_parts; int parts; } ;


 int DRV_NAME ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 void* MLC_DATA (int ) ;
 int MLC_IRQ_SR (int ) ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int NAND_NO_SUBPAGE_WRITE ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_get (TYPE_6__*,int *) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_get_platdata (TYPE_6__*) ;
 int devm_ioremap_resource (TYPE_6__*,struct resource*) ;
 struct lpc32xx_nand_host* devm_kzalloc (TYPE_6__*,int,int ) ;
 int dma_release_channel (int ) ;
 int free_irq (scalar_t__,struct lpc32xx_nand_host*) ;
 int gpio_free (int) ;
 scalar_t__ gpio_is_valid (int) ;
 scalar_t__ gpio_request (int,char*) ;
 int init_completion (int *) ;
 int lpc32xx_dma_setup (struct lpc32xx_nand_host*) ;
 int lpc32xx_ecc_enable ;
 int lpc32xx_nand_bbt ;
 int lpc32xx_nand_bbt_mirror ;
 int lpc32xx_nand_cmd_ctrl ;
 int lpc32xx_nand_controller_ops ;
 int lpc32xx_nand_device_ready ;
 int lpc32xx_nand_setup (struct lpc32xx_nand_host*) ;
 TYPE_5__* lpc32xx_parse_dt (TYPE_6__*) ;
 int lpc32xx_read_oob ;
 void* lpc32xx_read_page ;
 int lpc32xx_waitfunc ;
 int lpc32xx_wp_disable (struct lpc32xx_nand_host*) ;
 int lpc32xx_wp_enable (struct lpc32xx_nand_host*) ;
 int lpc32xx_write_oob ;
 void* lpc32xx_write_page_lowlevel ;
 int lpc3xxx_nand_irq ;
 int mtd_device_register (struct mtd_info*,int ,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_controller_data (struct nand_chip*,struct lpc32xx_nand_host*) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpc32xx_nand_host*) ;
 int readb (int ) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,int ,struct lpc32xx_nand_host*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static int lpc32xx_nand_probe(struct platform_device *pdev)
{
 struct lpc32xx_nand_host *host;
 struct mtd_info *mtd;
 struct nand_chip *nand_chip;
 struct resource *rc;
 int res;


 host = devm_kzalloc(&pdev->dev, sizeof(*host), GFP_KERNEL);
 if (!host)
  return -ENOMEM;

 host->pdev = pdev;

 rc = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->io_base = devm_ioremap_resource(&pdev->dev, rc);
 if (IS_ERR(host->io_base))
  return PTR_ERR(host->io_base);

 host->io_base_phy = rc->start;

 nand_chip = &host->nand_chip;
 mtd = nand_to_mtd(nand_chip);
 if (pdev->dev.of_node)
  host->ncfg = lpc32xx_parse_dt(&pdev->dev);
 if (!host->ncfg) {
  dev_err(&pdev->dev,
   "Missing or bad NAND config from device tree\n");
  return -ENOENT;
 }
 if (host->ncfg->wp_gpio == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (gpio_is_valid(host->ncfg->wp_gpio) &&
   gpio_request(host->ncfg->wp_gpio, "NAND WP")) {
  dev_err(&pdev->dev, "GPIO not available\n");
  return -EBUSY;
 }
 lpc32xx_wp_disable(host);

 host->pdata = dev_get_platdata(&pdev->dev);


 nand_set_controller_data(nand_chip, host);
 nand_set_flash_node(nand_chip, pdev->dev.of_node);
 mtd->dev.parent = &pdev->dev;


 host->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(host->clk)) {
  dev_err(&pdev->dev, "Clock initialization failure\n");
  res = -ENOENT;
  goto free_gpio;
 }
 res = clk_prepare_enable(host->clk);
 if (res)
  goto put_clk;

 nand_chip->legacy.cmd_ctrl = lpc32xx_nand_cmd_ctrl;
 nand_chip->legacy.dev_ready = lpc32xx_nand_device_ready;
 nand_chip->legacy.chip_delay = 25;
 nand_chip->legacy.IO_ADDR_R = MLC_DATA(host->io_base);
 nand_chip->legacy.IO_ADDR_W = MLC_DATA(host->io_base);


 lpc32xx_nand_setup(host);

 platform_set_drvdata(pdev, host);


 nand_chip->ecc.hwctl = lpc32xx_ecc_enable;
 nand_chip->ecc.read_page_raw = lpc32xx_read_page;
 nand_chip->ecc.read_page = lpc32xx_read_page;
 nand_chip->ecc.write_page_raw = lpc32xx_write_page_lowlevel;
 nand_chip->ecc.write_page = lpc32xx_write_page_lowlevel;
 nand_chip->ecc.write_oob = lpc32xx_write_oob;
 nand_chip->ecc.read_oob = lpc32xx_read_oob;
 nand_chip->ecc.strength = 4;
 nand_chip->ecc.bytes = 10;
 nand_chip->legacy.waitfunc = lpc32xx_waitfunc;

 nand_chip->options = NAND_NO_SUBPAGE_WRITE;
 nand_chip->bbt_options = NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
 nand_chip->bbt_td = &lpc32xx_nand_bbt;
 nand_chip->bbt_md = &lpc32xx_nand_bbt_mirror;

 if (use_dma) {
  res = lpc32xx_dma_setup(host);
  if (res) {
   res = -EIO;
   goto unprepare_clk;
  }
 }


 readb(MLC_IRQ_SR(host->io_base));

 init_completion(&host->comp_nand);
 init_completion(&host->comp_controller);

 host->irq = platform_get_irq(pdev, 0);
 if (host->irq < 0) {
  dev_err(&pdev->dev, "failed to get platform irq\n");
  res = -EINVAL;
  goto release_dma_chan;
 }

 if (request_irq(host->irq, (irq_handler_t)&lpc3xxx_nand_irq,
   IRQF_TRIGGER_HIGH, DRV_NAME, host)) {
  dev_err(&pdev->dev, "Error requesting NAND IRQ\n");
  res = -ENXIO;
  goto release_dma_chan;
 }





 nand_chip->legacy.dummy_controller.ops = &lpc32xx_nand_controller_ops;
 res = nand_scan(nand_chip, 1);
 if (res)
  goto free_irq;

 mtd->name = DRV_NAME;

 res = mtd_device_register(mtd, host->ncfg->parts,
      host->ncfg->num_parts);
 if (res)
  goto cleanup_nand;

 return 0;

cleanup_nand:
 nand_cleanup(nand_chip);
free_irq:
 free_irq(host->irq, host);
release_dma_chan:
 if (use_dma)
  dma_release_channel(host->dma_chan);
unprepare_clk:
 clk_disable_unprepare(host->clk);
put_clk:
 clk_put(host->clk);
free_gpio:
 lpc32xx_wp_enable(host);
 gpio_free(host->ncfg->wp_gpio);

 return res;
}
