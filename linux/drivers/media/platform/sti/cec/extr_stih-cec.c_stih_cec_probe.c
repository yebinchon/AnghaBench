
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih_cec {scalar_t__ irq; int adap; int notifier; struct device* clk; struct device* regs; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; int name; } ;


 int CEC_CAP_CONNECTOR_INFO ;
 int CEC_CAP_DEFAULTS ;
 int CEC_MAX_LOG_ADDRS ;
 int CEC_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int cec_allocate_adapter (int *,struct stih_cec*,int ,int,int ) ;
 int cec_delete_adapter (int ) ;
 int cec_notifier_cec_adap_register (struct device*,int *,int ) ;
 int cec_notifier_cec_adap_unregister (int ) ;
 struct device* cec_notifier_parse_hdmi_phandle (struct device*) ;
 int cec_register_adapter (int ,struct device*) ;
 int dev_err (struct device*,char*) ;
 struct device* devm_clk_get (struct device*,char*) ;
 struct device* devm_ioremap_resource (struct device*,struct resource*) ;
 struct stih_cec* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct stih_cec*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stih_cec*) ;
 int sti_cec_adap_ops ;
 int stih_cec_irq_handler ;
 int stih_cec_irq_handler_thread ;

__attribute__((used)) static int stih_cec_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct stih_cec *cec;
 struct device *hdmi_dev;
 int ret;

 hdmi_dev = cec_notifier_parse_hdmi_phandle(dev);

 if (IS_ERR(hdmi_dev))
  return PTR_ERR(hdmi_dev);

 cec = devm_kzalloc(dev, sizeof(*cec), GFP_KERNEL);
 if (!cec)
  return -ENOMEM;

 cec->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 cec->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(cec->regs))
  return PTR_ERR(cec->regs);

 cec->irq = platform_get_irq(pdev, 0);
 if (cec->irq < 0)
  return cec->irq;

 ret = devm_request_threaded_irq(dev, cec->irq, stih_cec_irq_handler,
     stih_cec_irq_handler_thread, 0,
     pdev->name, cec);
 if (ret)
  return ret;

 cec->clk = devm_clk_get(dev, "cec-clk");
 if (IS_ERR(cec->clk)) {
  dev_err(dev, "Cannot get cec clock\n");
  return PTR_ERR(cec->clk);
 }

 cec->adap = cec_allocate_adapter(&sti_cec_adap_ops, cec, CEC_NAME,
      CEC_CAP_DEFAULTS |
      CEC_CAP_CONNECTOR_INFO,
      CEC_MAX_LOG_ADDRS);
 ret = PTR_ERR_OR_ZERO(cec->adap);
 if (ret)
  return ret;

 cec->notifier = cec_notifier_cec_adap_register(hdmi_dev, ((void*)0),
             cec->adap);
 if (!cec->notifier) {
  ret = -ENOMEM;
  goto err_delete_adapter;
 }

 ret = cec_register_adapter(cec->adap, &pdev->dev);
 if (ret)
  goto err_notifier;

 platform_set_drvdata(pdev, cec);
 return 0;

err_notifier:
 cec_notifier_cec_adap_unregister(cec->notifier);

err_delete_adapter:
 cec_delete_adapter(cec->adap);
 return ret;
}
