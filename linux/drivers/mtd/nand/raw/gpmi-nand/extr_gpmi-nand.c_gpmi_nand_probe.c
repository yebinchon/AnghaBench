
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_device_id {int data; } ;
struct gpmi_nand_data {int * dev; struct platform_device* pdev; int devdata; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __gpmi_enable_clk (struct gpmi_nand_data*,int) ;
 int acquire_resources (struct gpmi_nand_data*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct gpmi_nand_data* devm_kzalloc (int *,int,int ) ;
 int gpmi_init (struct gpmi_nand_data*) ;
 int gpmi_nand_id_table ;
 int gpmi_nand_init (struct gpmi_nand_data*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_set_drvdata (struct platform_device*,struct gpmi_nand_data*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;
 int release_resources (struct gpmi_nand_data*) ;

__attribute__((used)) static int gpmi_nand_probe(struct platform_device *pdev)
{
 struct gpmi_nand_data *this;
 const struct of_device_id *of_id;
 int ret;

 this = devm_kzalloc(&pdev->dev, sizeof(*this), GFP_KERNEL);
 if (!this)
  return -ENOMEM;

 of_id = of_match_device(gpmi_nand_id_table, &pdev->dev);
 if (of_id) {
  this->devdata = of_id->data;
 } else {
  dev_err(&pdev->dev, "Failed to find the right device id.\n");
  return -ENODEV;
 }

 platform_set_drvdata(pdev, this);
 this->pdev = pdev;
 this->dev = &pdev->dev;

 ret = acquire_resources(this);
 if (ret)
  goto exit_acquire_resources;

 ret = __gpmi_enable_clk(this, 1);
 if (ret)
  goto exit_nfc_init;

 pm_runtime_set_autosuspend_delay(&pdev->dev, 500);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 ret = gpmi_init(this);
 if (ret)
  goto exit_nfc_init;

 ret = gpmi_nand_init(this);
 if (ret)
  goto exit_nfc_init;

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);

 dev_info(this->dev, "driver registered.\n");

 return 0;

exit_nfc_init:
 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 release_resources(this);
exit_acquire_resources:

 return ret;
}
