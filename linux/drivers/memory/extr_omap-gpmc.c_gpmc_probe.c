
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_10__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpmc_device {TYPE_1__* dev; scalar_t__ nirqs; int irq; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPMC_CS_NUM ;
 int GPMC_HAS_MUX_AAD ;
 int GPMC_HAS_WR_ACCESS ;
 int GPMC_HAS_WR_DATA_MUX_BUS ;
 scalar_t__ GPMC_NR_NAND_IRQS ;
 scalar_t__ GPMC_NR_WAITPINS ;
 int GPMC_REVISION ;
 int GPMC_REVISION_MAJOR (int ) ;
 int GPMC_REVISION_MINOR (int ) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get_rate (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int,int ) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct gpmc_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 int gpmc_base ;
 int gpmc_capability ;
 int gpmc_cs_num ;
 int gpmc_gpio_init (struct gpmc_device*) ;
 int gpmc_l3_clk ;
 int gpmc_mem_exit () ;
 int gpmc_mem_init () ;
 scalar_t__ gpmc_nr_waitpins ;
 int gpmc_probe_dt (struct platform_device*) ;
 int gpmc_probe_dt_children (struct platform_device*) ;
 int gpmc_read_reg (int ) ;
 int gpmc_setup_irq (struct gpmc_device*) ;
 int mem_size ;
 int phys_base ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpmc_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put_sync (TYPE_1__*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int gpmc_probe(struct platform_device *pdev)
{
 int rc;
 u32 l;
 struct resource *res;
 struct gpmc_device *gpmc;

 gpmc = devm_kzalloc(&pdev->dev, sizeof(*gpmc), GFP_KERNEL);
 if (!gpmc)
  return -ENOMEM;

 gpmc->dev = &pdev->dev;
 platform_set_drvdata(pdev, gpmc);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0))
  return -ENOENT;

 phys_base = res->start;
 mem_size = resource_size(res);

 gpmc_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(gpmc_base))
  return PTR_ERR(gpmc_base);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev, "Failed to get resource: irq\n");
  return -ENOENT;
 }

 gpmc->irq = res->start;

 gpmc_l3_clk = devm_clk_get(&pdev->dev, "fck");
 if (IS_ERR(gpmc_l3_clk)) {
  dev_err(&pdev->dev, "Failed to get GPMC fck\n");
  return PTR_ERR(gpmc_l3_clk);
 }

 if (!clk_get_rate(gpmc_l3_clk)) {
  dev_err(&pdev->dev, "Invalid GPMC fck clock rate\n");
  return -EINVAL;
 }

 if (pdev->dev.of_node) {
  rc = gpmc_probe_dt(pdev);
  if (rc)
   return rc;
 } else {
  gpmc_cs_num = GPMC_CS_NUM;
  gpmc_nr_waitpins = GPMC_NR_WAITPINS;
 }

 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 l = gpmc_read_reg(GPMC_REVISION);
 if (GPMC_REVISION_MAJOR(l) > 0x4)
  gpmc_capability = GPMC_HAS_WR_ACCESS | GPMC_HAS_WR_DATA_MUX_BUS;
 if (GPMC_REVISION_MAJOR(l) > 0x5)
  gpmc_capability |= GPMC_HAS_MUX_AAD;
 dev_info(gpmc->dev, "GPMC revision %d.%d\n", GPMC_REVISION_MAJOR(l),
   GPMC_REVISION_MINOR(l));

 gpmc_mem_init();
 rc = gpmc_gpio_init(gpmc);
 if (rc)
  goto gpio_init_failed;

 gpmc->nirqs = GPMC_NR_NAND_IRQS + gpmc_nr_waitpins;
 rc = gpmc_setup_irq(gpmc);
 if (rc) {
  dev_err(gpmc->dev, "gpmc_setup_irq failed\n");
  goto gpio_init_failed;
 }

 gpmc_probe_dt_children(pdev);

 return 0;

gpio_init_failed:
 gpmc_mem_exit();
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return rc;
}
