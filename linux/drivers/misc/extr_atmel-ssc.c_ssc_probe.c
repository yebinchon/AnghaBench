
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ssc_device {int irq; int regs; int list; int clk; int phybase; int clk_from_rk_pin; struct atmel_ssc_platform_data* pdata; struct platform_device* pdev; } ;
struct resource {int start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct atmel_ssc_platform_data {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IDR ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SR ;
 struct atmel_ssc_platform_data* atmel_ssc_get_driver_data (struct platform_device*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ,int ) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct ssc_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ssc_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ssc_list ;
 int ssc_readl (int ,int ) ;
 scalar_t__ ssc_sound_dai_probe (struct ssc_device*) ;
 int ssc_writel (int ,int ,int) ;
 int user_lock ;

__attribute__((used)) static int ssc_probe(struct platform_device *pdev)
{
 struct resource *regs;
 struct ssc_device *ssc;
 const struct atmel_ssc_platform_data *plat_dat;

 ssc = devm_kzalloc(&pdev->dev, sizeof(struct ssc_device), GFP_KERNEL);
 if (!ssc) {
  dev_dbg(&pdev->dev, "out of memory\n");
  return -ENOMEM;
 }

 ssc->pdev = pdev;

 plat_dat = atmel_ssc_get_driver_data(pdev);
 if (!plat_dat)
  return -ENODEV;
 ssc->pdata = (struct atmel_ssc_platform_data *)plat_dat;

 if (pdev->dev.of_node) {
  struct device_node *np = pdev->dev.of_node;
  ssc->clk_from_rk_pin =
   of_property_read_bool(np, "atmel,clk-from-rk-pin");
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ssc->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(ssc->regs))
  return PTR_ERR(ssc->regs);

 ssc->phybase = regs->start;

 ssc->clk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(ssc->clk)) {
  dev_dbg(&pdev->dev, "no pclk clock defined\n");
  return -ENXIO;
 }


 clk_prepare_enable(ssc->clk);
 ssc_writel(ssc->regs, IDR, -1);
 ssc_readl(ssc->regs, SR);
 clk_disable_unprepare(ssc->clk);

 ssc->irq = platform_get_irq(pdev, 0);
 if (!ssc->irq) {
  dev_dbg(&pdev->dev, "could not get irq\n");
  return -ENXIO;
 }

 spin_lock(&user_lock);
 list_add_tail(&ssc->list, &ssc_list);
 spin_unlock(&user_lock);

 platform_set_drvdata(pdev, ssc);

 dev_info(&pdev->dev, "Atmel SSC device at 0x%p (irq %d)\n",
   ssc->regs, ssc->irq);

 if (ssc_sound_dai_probe(ssc))
  dev_err(&pdev->dev, "failed to auto-setup ssc for audio\n");

 return 0;
}
