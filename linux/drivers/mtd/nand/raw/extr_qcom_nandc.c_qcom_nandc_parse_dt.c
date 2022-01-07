
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_nand_controller {TYPE_2__* dev; int data_crci; int cmd_crci; TYPE_1__* props; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_3__ {int is_bam; } ;


 int dev_err (TYPE_2__*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 struct qcom_nand_controller* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int qcom_nandc_parse_dt(struct platform_device *pdev)
{
 struct qcom_nand_controller *nandc = platform_get_drvdata(pdev);
 struct device_node *np = nandc->dev->of_node;
 int ret;

 if (!nandc->props->is_bam) {
  ret = of_property_read_u32(np, "qcom,cmd-crci",
        &nandc->cmd_crci);
  if (ret) {
   dev_err(nandc->dev, "command CRCI unspecified\n");
   return ret;
  }

  ret = of_property_read_u32(np, "qcom,data-crci",
        &nandc->data_crci);
  if (ret) {
   dev_err(nandc->dev, "data CRCI unspecified\n");
   return ret;
  }
 }

 return 0;
}
