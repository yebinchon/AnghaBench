
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {int dummy; } ;
struct qcom_rpm {TYPE_1__* data; int ipc_bit; int ipc_offset; int * ipc_regmap; int * status_regs; int * req_regs; int * ctrl_regs; int * ramclk; int ack; int lock; TYPE_2__* dev; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {scalar_t__ version; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int RPM_CTRL_REG (struct qcom_rpm*,int) ;
 int RPM_STATUS_REG (struct qcom_rpm*,int) ;
 int clk_prepare_enable (int *) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_set_drvdata (TYPE_2__*,struct qcom_rpm*) ;
 int dev_warn (TYPE_2__*,char*) ;
 int * devm_clk_get (TYPE_2__*,char*) ;
 int * devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct qcom_rpm* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,char*,struct qcom_rpm*) ;
 int init_completion (int *) ;
 int irq_set_irq_wake (int,int) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_platform_populate (int ,int *,int *,TYPE_2__*) ;
 int of_property_read_u32_index (int ,char*,int,int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int qcom_rpm_ack_interrupt ;
 int qcom_rpm_err_interrupt ;
 int qcom_rpm_of_match ;
 int qcom_rpm_wakeup_interrupt ;
 scalar_t__ readl (int ) ;
 int * syscon_node_to_regmap (struct device_node*) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int qcom_rpm_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct device_node *syscon_np;
 struct resource *res;
 struct qcom_rpm *rpm;
 u32 fw_version[3];
 int irq_wakeup;
 int irq_ack;
 int irq_err;
 int ret;

 rpm = devm_kzalloc(&pdev->dev, sizeof(*rpm), GFP_KERNEL);
 if (!rpm)
  return -ENOMEM;

 rpm->dev = &pdev->dev;
 mutex_init(&rpm->lock);
 init_completion(&rpm->ack);


 rpm->ramclk = devm_clk_get(&pdev->dev, "ram");
 if (IS_ERR(rpm->ramclk)) {
  ret = PTR_ERR(rpm->ramclk);
  if (ret == -EPROBE_DEFER)
   return ret;




  rpm->ramclk = ((void*)0);
 }
 clk_prepare_enable(rpm->ramclk);

 irq_ack = platform_get_irq_byname(pdev, "ack");
 if (irq_ack < 0)
  return irq_ack;

 irq_err = platform_get_irq_byname(pdev, "err");
 if (irq_err < 0)
  return irq_err;

 irq_wakeup = platform_get_irq_byname(pdev, "wakeup");
 if (irq_wakeup < 0)
  return irq_wakeup;

 match = of_match_device(qcom_rpm_of_match, &pdev->dev);
 if (!match)
  return -ENODEV;
 rpm->data = match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rpm->status_regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rpm->status_regs))
  return PTR_ERR(rpm->status_regs);
 rpm->ctrl_regs = rpm->status_regs + 0x400;
 rpm->req_regs = rpm->status_regs + 0x600;

 syscon_np = of_parse_phandle(pdev->dev.of_node, "qcom,ipc", 0);
 if (!syscon_np) {
  dev_err(&pdev->dev, "no qcom,ipc node\n");
  return -ENODEV;
 }

 rpm->ipc_regmap = syscon_node_to_regmap(syscon_np);
 of_node_put(syscon_np);
 if (IS_ERR(rpm->ipc_regmap))
  return PTR_ERR(rpm->ipc_regmap);

 ret = of_property_read_u32_index(pdev->dev.of_node, "qcom,ipc", 1,
      &rpm->ipc_offset);
 if (ret < 0) {
  dev_err(&pdev->dev, "no offset in qcom,ipc\n");
  return -EINVAL;
 }

 ret = of_property_read_u32_index(pdev->dev.of_node, "qcom,ipc", 2,
      &rpm->ipc_bit);
 if (ret < 0) {
  dev_err(&pdev->dev, "no bit in qcom,ipc\n");
  return -EINVAL;
 }

 dev_set_drvdata(&pdev->dev, rpm);

 fw_version[0] = readl(RPM_STATUS_REG(rpm, 0));
 fw_version[1] = readl(RPM_STATUS_REG(rpm, 1));
 fw_version[2] = readl(RPM_STATUS_REG(rpm, 2));
 if (fw_version[0] != rpm->data->version) {
  dev_err(&pdev->dev,
   "RPM version %u.%u.%u incompatible with driver version %u",
   fw_version[0],
   fw_version[1],
   fw_version[2],
   rpm->data->version);
  return -EFAULT;
 }

 writel(fw_version[0], RPM_CTRL_REG(rpm, 0));
 writel(fw_version[1], RPM_CTRL_REG(rpm, 1));
 writel(fw_version[2], RPM_CTRL_REG(rpm, 2));

 dev_info(&pdev->dev, "RPM firmware %u.%u.%u\n", fw_version[0],
       fw_version[1],
       fw_version[2]);

 ret = devm_request_irq(&pdev->dev,
          irq_ack,
          qcom_rpm_ack_interrupt,
          IRQF_TRIGGER_RISING,
          "qcom_rpm_ack",
          rpm);
 if (ret) {
  dev_err(&pdev->dev, "failed to request ack interrupt\n");
  return ret;
 }

 ret = irq_set_irq_wake(irq_ack, 1);
 if (ret)
  dev_warn(&pdev->dev, "failed to mark ack irq as wakeup\n");

 ret = devm_request_irq(&pdev->dev,
          irq_err,
          qcom_rpm_err_interrupt,
          IRQF_TRIGGER_RISING,
          "qcom_rpm_err",
          rpm);
 if (ret) {
  dev_err(&pdev->dev, "failed to request err interrupt\n");
  return ret;
 }

 ret = devm_request_irq(&pdev->dev,
          irq_wakeup,
          qcom_rpm_wakeup_interrupt,
          IRQF_TRIGGER_RISING,
          "qcom_rpm_wakeup",
          rpm);
 if (ret) {
  dev_err(&pdev->dev, "failed to request wakeup interrupt\n");
  return ret;
 }

 ret = irq_set_irq_wake(irq_wakeup, 1);
 if (ret)
  dev_warn(&pdev->dev, "failed to mark wakeup irq as wakeup\n");

 return of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);
}
