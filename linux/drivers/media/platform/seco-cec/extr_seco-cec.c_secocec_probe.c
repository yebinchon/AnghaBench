
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct secocec_data {struct device* cec_adap; int notifier; int irq; struct device* dev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int BRA_SMB_BASE_ADDR ;
 int CEC_CAP_CONNECTOR_INFO ;
 int CEC_CAP_DEFAULTS ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 scalar_t__ SECOCEC_LATEST_FW ;
 int SECOCEC_MAX_ADDRS ;
 int SECOCEC_VERSION ;
 struct device* cec_allocate_adapter (int *,struct secocec_data*,int ,int,int ) ;
 int cec_delete_adapter (struct device*) ;
 int cec_notifier_cec_adap_register (struct device*,char const*,struct device*) ;
 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_register_adapter (struct device*,struct device*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct secocec_data*) ;
 struct secocec_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,int ,struct secocec_data*) ;
 int has_acpi_companion (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct secocec_data*) ;
 int request_muxed_region (int ,int,char*) ;
 int secocec_acpi_probe (struct secocec_data*) ;
 int secocec_cec_adap_ops ;
 struct device* secocec_cec_find_hdmi_dev (struct device*,char const**) ;
 int secocec_ir_probe (struct secocec_data*) ;
 int secocec_irq_handler ;
 int smb_rd16 (int ,scalar_t__*) ;

__attribute__((used)) static int secocec_probe(struct platform_device *pdev)
{
 struct secocec_data *secocec;
 struct device *dev = &pdev->dev;
 struct device *hdmi_dev;
 const char *conn = ((void*)0);
 int ret;
 u16 val;

 hdmi_dev = secocec_cec_find_hdmi_dev(&pdev->dev, &conn);
 if (IS_ERR(hdmi_dev))
  return PTR_ERR(hdmi_dev);

 secocec = devm_kzalloc(dev, sizeof(*secocec), GFP_KERNEL);
 if (!secocec)
  return -ENOMEM;

 dev_set_drvdata(dev, secocec);


 if (!request_muxed_region(BRA_SMB_BASE_ADDR, 7, "CEC00001")) {
  dev_err(dev, "Request memory region failed");
  return -ENXIO;
 }

 secocec->pdev = pdev;
 secocec->dev = dev;

 if (!has_acpi_companion(dev)) {
  dev_dbg(dev, "Cannot find any ACPI companion");
  ret = -ENODEV;
  goto err;
 }

 ret = secocec_acpi_probe(secocec);
 if (ret) {
  dev_err(dev, "Cannot assign gpio to IRQ");
  ret = -ENODEV;
  goto err;
 }


 ret = smb_rd16(SECOCEC_VERSION, &val);
 if (ret) {
  dev_err(dev, "Cannot check fw version");
  goto err;
 }
 if (val < SECOCEC_LATEST_FW) {
  dev_err(dev, "CEC Firmware not supported (v.%04x). Use ver > v.%04x",
   val, SECOCEC_LATEST_FW);
  ret = -EINVAL;
  goto err;
 }

 ret = devm_request_threaded_irq(dev,
     secocec->irq,
     ((void*)0),
     secocec_irq_handler,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev_name(&pdev->dev), secocec);

 if (ret) {
  dev_err(dev, "Cannot request IRQ %d", secocec->irq);
  ret = -EIO;
  goto err;
 }


 secocec->cec_adap = cec_allocate_adapter(&secocec_cec_adap_ops,
       secocec,
       dev_name(dev),
       CEC_CAP_DEFAULTS |
       CEC_CAP_CONNECTOR_INFO,
       SECOCEC_MAX_ADDRS);

 if (IS_ERR(secocec->cec_adap)) {
  ret = PTR_ERR(secocec->cec_adap);
  goto err;
 }

 secocec->notifier = cec_notifier_cec_adap_register(hdmi_dev, conn,
          secocec->cec_adap);
 if (!secocec->notifier) {
  ret = -ENOMEM;
  goto err_delete_adapter;
 }

 ret = cec_register_adapter(secocec->cec_adap, dev);
 if (ret)
  goto err_notifier;

 ret = secocec_ir_probe(secocec);
 if (ret)
  goto err_notifier;

 platform_set_drvdata(pdev, secocec);

 dev_dbg(dev, "Device registered");

 return ret;

err_notifier:
 cec_notifier_cec_adap_unregister(secocec->notifier);
err_delete_adapter:
 cec_delete_adapter(secocec->cec_adap);
err:
 dev_err(dev, "%s device probe failed\n", dev_name(dev));

 return ret;
}
