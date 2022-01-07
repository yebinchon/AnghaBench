
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct meson_ao_cec_device {struct device* adap; int notify; struct device* core; struct device* base; struct platform_device* pdev; int cec_reg_lock; } ;
struct device {int owner; } ;


 int CEC_CAP_CONNECTOR_INFO ;
 int CEC_CAP_DEFAULTS ;
 int CEC_CLK_RATE ;
 int CEC_GEN_CNTL_REG ;
 int CEC_GEN_CNTL_RESET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 struct device* cec_allocate_adapter (int *,struct meson_ao_cec_device*,char*,int,int) ;
 int cec_delete_adapter (struct device*) ;
 int cec_notifier_cec_adap_register (struct device*,int *,struct device*) ;
 int cec_notifier_cec_adap_unregister (int ) ;
 struct device* cec_notifier_parse_hdmi_phandle (int *) ;
 int cec_register_adapter (struct device*,int *) ;
 int clk_disable_unprepare (struct device*) ;
 int clk_prepare_enable (struct device*) ;
 int clk_set_rate (struct device*,int ) ;
 int dev_err (int *,char*) ;
 int device_reset_optional (int *) ;
 struct device* devm_clk_get (int *,char*) ;
 struct device* devm_ioremap_resource (int *,struct resource*) ;
 struct meson_ao_cec_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int ,int ,int ,int *,struct meson_ao_cec_device*) ;
 int meson_ao_cec_irq ;
 int meson_ao_cec_irq_thread ;
 int meson_ao_cec_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_ao_cec_device*) ;
 int spin_lock_init (int *) ;
 int writel_relaxed (int ,struct device*) ;

__attribute__((used)) static int meson_ao_cec_probe(struct platform_device *pdev)
{
 struct meson_ao_cec_device *ao_cec;
 struct device *hdmi_dev;
 struct resource *res;
 int ret, irq;

 hdmi_dev = cec_notifier_parse_hdmi_phandle(&pdev->dev);

 if (IS_ERR(hdmi_dev))
  return PTR_ERR(hdmi_dev);

 ao_cec = devm_kzalloc(&pdev->dev, sizeof(*ao_cec), GFP_KERNEL);
 if (!ao_cec)
  return -ENOMEM;

 spin_lock_init(&ao_cec->cec_reg_lock);

 ao_cec->adap = cec_allocate_adapter(&meson_ao_cec_ops, ao_cec,
         "meson_ao_cec",
         CEC_CAP_DEFAULTS |
         CEC_CAP_CONNECTOR_INFO,
         1);
 if (IS_ERR(ao_cec->adap))
  return PTR_ERR(ao_cec->adap);

 ao_cec->notify = cec_notifier_cec_adap_register(hdmi_dev, ((void*)0),
       ao_cec->adap);
 if (!ao_cec->notify) {
  ret = -ENOMEM;
  goto out_probe_adapter;
 }

 ao_cec->adap->owner = THIS_MODULE;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ao_cec->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ao_cec->base)) {
  ret = PTR_ERR(ao_cec->base);
  goto out_probe_notify;
 }

 irq = platform_get_irq(pdev, 0);
 ret = devm_request_threaded_irq(&pdev->dev, irq,
     meson_ao_cec_irq,
     meson_ao_cec_irq_thread,
     0, ((void*)0), ao_cec);
 if (ret) {
  dev_err(&pdev->dev, "irq request failed\n");
  goto out_probe_notify;
 }

 ao_cec->core = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(ao_cec->core)) {
  dev_err(&pdev->dev, "core clock request failed\n");
  ret = PTR_ERR(ao_cec->core);
  goto out_probe_notify;
 }

 ret = clk_prepare_enable(ao_cec->core);
 if (ret) {
  dev_err(&pdev->dev, "core clock enable failed\n");
  goto out_probe_notify;
 }

 ret = clk_set_rate(ao_cec->core, CEC_CLK_RATE);
 if (ret) {
  dev_err(&pdev->dev, "core clock set rate failed\n");
  goto out_probe_clk;
 }

 device_reset_optional(&pdev->dev);

 ao_cec->pdev = pdev;
 platform_set_drvdata(pdev, ao_cec);

 ret = cec_register_adapter(ao_cec->adap, &pdev->dev);
 if (ret < 0)
  goto out_probe_clk;


 writel_relaxed(CEC_GEN_CNTL_RESET,
         ao_cec->base + CEC_GEN_CNTL_REG);

 return 0;

out_probe_clk:
 clk_disable_unprepare(ao_cec->core);

out_probe_notify:
 cec_notifier_cec_adap_unregister(ao_cec->notify);

out_probe_adapter:
 cec_delete_adapter(ao_cec->adap);

 dev_err(&pdev->dev, "CEC controller registration failed\n");

 return ret;
}
