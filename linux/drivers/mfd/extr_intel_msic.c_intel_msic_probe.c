
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct intel_msic_platform_data {int dummy; } ;
struct intel_msic {scalar_t__ vendor; int version; int irq_base; struct platform_device* pdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INTEL_MSIC_ID0 ;
 int INTEL_MSIC_ID1 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MSIC_MAJOR (int ) ;
 int MSIC_MINOR (int ) ;
 scalar_t__ MSIC_VENDOR (int ) ;
 int MSIC_VERSION (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct intel_msic_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ,int ,scalar_t__) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct intel_msic* devm_kzalloc (int *,int,int ) ;
 int intel_msic_init_devices (struct intel_msic*) ;
 int intel_scu_ipc_ioread8 (int ,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct intel_msic*) ;

__attribute__((used)) static int intel_msic_probe(struct platform_device *pdev)
{
 struct intel_msic_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct intel_msic *msic;
 struct resource *res;
 u8 id0, id1;
 int ret;

 if (!pdata) {
  dev_err(&pdev->dev, "no platform data passed\n");
  return -EINVAL;
 }


 ret = intel_scu_ipc_ioread8(INTEL_MSIC_ID0, &id0);
 if (ret) {
  dev_err(&pdev->dev, "failed to identify the MSIC chip (ID0)\n");
  return -ENXIO;
 }

 ret = intel_scu_ipc_ioread8(INTEL_MSIC_ID1, &id1);
 if (ret) {
  dev_err(&pdev->dev, "failed to identify the MSIC chip (ID1)\n");
  return -ENXIO;
 }

 if (MSIC_VENDOR(id0) != MSIC_VENDOR(id1)) {
  dev_err(&pdev->dev, "invalid vendor ID: %x, %x\n", id0, id1);
  return -ENXIO;
 }

 msic = devm_kzalloc(&pdev->dev, sizeof(*msic), GFP_KERNEL);
 if (!msic)
  return -ENOMEM;

 msic->vendor = MSIC_VENDOR(id0);
 msic->version = MSIC_VERSION(id0);
 msic->pdev = pdev;





 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 msic->irq_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(msic->irq_base))
  return PTR_ERR(msic->irq_base);

 platform_set_drvdata(pdev, msic);

 ret = intel_msic_init_devices(msic);
 if (ret) {
  dev_err(&pdev->dev, "failed to initialize MSIC devices\n");
  return ret;
 }

 dev_info(&pdev->dev, "Intel MSIC version %c%d (vendor %#x)\n",
   MSIC_MAJOR(msic->version), MSIC_MINOR(msic->version),
   msic->vendor);

 return 0;
}
