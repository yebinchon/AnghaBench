
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct reset_control {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct device_node {int dummy; } ;
struct cqspi_st {int wr_delay; int current_cs; struct reset_control* clk; scalar_t__ sclk; int master_ref_clk_hz; int transfer_complete; int ahb_size; scalar_t__ mmap_phys_base; struct reset_control* ahb_base; struct reset_control* iobase; struct platform_device* pdev; int bus_mutex; } ;
struct cqspi_driver_platdata {int quirks; } ;
typedef scalar_t__ dma_addr_t ;


 int CQSPI_NEEDS_WR_DELAY ;
 int DIV_ROUND_UP (int ,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int NSEC_PER_SEC ;
 int PTR_ERR (struct reset_control*) ;
 int clk_disable_unprepare (struct reset_control*) ;
 int clk_get_rate (struct reset_control*) ;
 int clk_prepare_enable (struct reset_control*) ;
 int cqspi_controller_enable (struct cqspi_st*,int ) ;
 int cqspi_controller_init (struct cqspi_st*) ;
 int cqspi_irq_handler ;
 int cqspi_of_get_pdata (struct platform_device*) ;
 int cqspi_setup_flash (struct cqspi_st*,struct device_node*) ;
 int cqspi_wait_idle (struct cqspi_st*) ;
 int dev_err (struct device*,char*,...) ;
 struct reset_control* devm_clk_get (struct device*,int *) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct cqspi_st* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct cqspi_st*) ;
 struct reset_control* devm_reset_control_get_optional_exclusive (struct device*,char*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 struct cqspi_driver_platdata* of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct cqspi_st*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int cqspi_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct cqspi_st *cqspi;
 struct resource *res;
 struct resource *res_ahb;
 struct reset_control *rstc, *rstc_ocp;
 const struct cqspi_driver_platdata *ddata;
 int ret;
 int irq;

 cqspi = devm_kzalloc(dev, sizeof(*cqspi), GFP_KERNEL);
 if (!cqspi)
  return -ENOMEM;

 mutex_init(&cqspi->bus_mutex);
 cqspi->pdev = pdev;
 platform_set_drvdata(pdev, cqspi);


 ret = cqspi_of_get_pdata(pdev);
 if (ret) {
  dev_err(dev, "Cannot get mandatory OF data.\n");
  return -ENODEV;
 }


 cqspi->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(cqspi->clk)) {
  dev_err(dev, "Cannot claim QSPI clock.\n");
  return PTR_ERR(cqspi->clk);
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 cqspi->iobase = devm_ioremap_resource(dev, res);
 if (IS_ERR(cqspi->iobase)) {
  dev_err(dev, "Cannot remap controller address.\n");
  return PTR_ERR(cqspi->iobase);
 }


 res_ahb = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 cqspi->ahb_base = devm_ioremap_resource(dev, res_ahb);
 if (IS_ERR(cqspi->ahb_base)) {
  dev_err(dev, "Cannot remap AHB address.\n");
  return PTR_ERR(cqspi->ahb_base);
 }
 cqspi->mmap_phys_base = (dma_addr_t)res_ahb->start;
 cqspi->ahb_size = resource_size(res_ahb);

 init_completion(&cqspi->transfer_complete);


 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "Cannot obtain IRQ.\n");
  return -ENXIO;
 }

 pm_runtime_enable(dev);
 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  pm_runtime_put_noidle(dev);
  return ret;
 }

 ret = clk_prepare_enable(cqspi->clk);
 if (ret) {
  dev_err(dev, "Cannot enable QSPI clock.\n");
  goto probe_clk_failed;
 }


 rstc = devm_reset_control_get_optional_exclusive(dev, "qspi");
 if (IS_ERR(rstc)) {
  dev_err(dev, "Cannot get QSPI reset.\n");
  return PTR_ERR(rstc);
 }

 rstc_ocp = devm_reset_control_get_optional_exclusive(dev, "qspi-ocp");
 if (IS_ERR(rstc_ocp)) {
  dev_err(dev, "Cannot get QSPI OCP reset.\n");
  return PTR_ERR(rstc_ocp);
 }

 reset_control_assert(rstc);
 reset_control_deassert(rstc);

 reset_control_assert(rstc_ocp);
 reset_control_deassert(rstc_ocp);

 cqspi->master_ref_clk_hz = clk_get_rate(cqspi->clk);
 ddata = of_device_get_match_data(dev);
 if (ddata && (ddata->quirks & CQSPI_NEEDS_WR_DELAY))
  cqspi->wr_delay = 5 * DIV_ROUND_UP(NSEC_PER_SEC,
         cqspi->master_ref_clk_hz);

 ret = devm_request_irq(dev, irq, cqspi_irq_handler, 0,
          pdev->name, cqspi);
 if (ret) {
  dev_err(dev, "Cannot request IRQ.\n");
  goto probe_irq_failed;
 }

 cqspi_wait_idle(cqspi);
 cqspi_controller_init(cqspi);
 cqspi->current_cs = -1;
 cqspi->sclk = 0;

 ret = cqspi_setup_flash(cqspi, np);
 if (ret) {
  dev_err(dev, "Cadence QSPI NOR probe failed %d\n", ret);
  goto probe_setup_failed;
 }

 return ret;
probe_setup_failed:
 cqspi_controller_enable(cqspi, 0);
probe_irq_failed:
 clk_disable_unprepare(cqspi->clk);
probe_clk_failed:
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 return ret;
}
