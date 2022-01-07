
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_cec {scalar_t__ tegra_cec_irq; int clk; struct device* adap; int notifier; int * dev; int cec_base; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct device {int dummy; } ;


 int CEC_CAP_CONNECTOR_INFO ;
 int CEC_CAP_DEFAULTS ;
 int CEC_CAP_MONITOR_ALL ;
 int CEC_MAX_LOG_ADDRS ;
 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct device*) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (struct device*) ;
 int TEGRA_CEC_NAME ;
 struct device* cec_allocate_adapter (int *,struct tegra_cec*,int ,int,int ) ;
 int cec_delete_adapter (struct device*) ;
 int cec_notifier_cec_adap_register (struct device*,int *,struct device*) ;
 int cec_notifier_cec_adap_unregister (int ) ;
 struct device* cec_notifier_parse_hdmi_phandle (int *) ;
 int cec_register_adapter (struct device*,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_nocache (int *,int ,int ) ;
 struct tegra_cec* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,int ,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int ,int ,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_cec*) ;
 int resource_size (struct resource*) ;
 int tegra_cec_irq_handler ;
 int tegra_cec_irq_thread_handler ;
 int tegra_cec_ops ;

__attribute__((used)) static int tegra_cec_probe(struct platform_device *pdev)
{
 struct device *hdmi_dev;
 struct tegra_cec *cec;
 struct resource *res;
 int ret = 0;

 hdmi_dev = cec_notifier_parse_hdmi_phandle(&pdev->dev);

 if (IS_ERR(hdmi_dev))
  return PTR_ERR(hdmi_dev);

 cec = devm_kzalloc(&pdev->dev, sizeof(struct tegra_cec), GFP_KERNEL);

 if (!cec)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 if (!res) {
  dev_err(&pdev->dev,
   "Unable to allocate resources for device\n");
  return -EBUSY;
 }

 if (!devm_request_mem_region(&pdev->dev, res->start, resource_size(res),
  pdev->name)) {
  dev_err(&pdev->dev,
   "Unable to request mem region for device\n");
  return -EBUSY;
 }

 cec->tegra_cec_irq = platform_get_irq(pdev, 0);

 if (cec->tegra_cec_irq <= 0)
  return -EBUSY;

 cec->cec_base = devm_ioremap_nocache(&pdev->dev, res->start,
          resource_size(res));

 if (!cec->cec_base) {
  dev_err(&pdev->dev, "Unable to grab IOs for device\n");
  return -EBUSY;
 }

 cec->clk = devm_clk_get(&pdev->dev, "cec");

 if (IS_ERR_OR_NULL(cec->clk)) {
  dev_err(&pdev->dev, "Can't get clock for CEC\n");
  return -ENOENT;
 }

 clk_prepare_enable(cec->clk);


 cec->dev = &pdev->dev;

 platform_set_drvdata(pdev, cec);

 ret = devm_request_threaded_irq(&pdev->dev, cec->tegra_cec_irq,
  tegra_cec_irq_handler, tegra_cec_irq_thread_handler,
  0, "cec_irq", &pdev->dev);

 if (ret) {
  dev_err(&pdev->dev,
   "Unable to request interrupt for device\n");
  goto err_clk;
 }

 cec->adap = cec_allocate_adapter(&tegra_cec_ops, cec, TEGRA_CEC_NAME,
   CEC_CAP_DEFAULTS | CEC_CAP_MONITOR_ALL |
   CEC_CAP_CONNECTOR_INFO,
   CEC_MAX_LOG_ADDRS);
 if (IS_ERR(cec->adap)) {
  ret = -ENOMEM;
  dev_err(&pdev->dev, "Couldn't create cec adapter\n");
  goto err_clk;
 }

 cec->notifier = cec_notifier_cec_adap_register(hdmi_dev, ((void*)0),
             cec->adap);
 if (!cec->notifier) {
  ret = -ENOMEM;
  goto err_adapter;
 }

 ret = cec_register_adapter(cec->adap, &pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "Couldn't register device\n");
  goto err_notifier;
 }

 return 0;

err_notifier:
 cec_notifier_cec_adap_unregister(cec->notifier);
err_adapter:
 cec_delete_adapter(cec->adap);
err_clk:
 clk_disable_unprepare(cec->clk);
 return ret;
}
