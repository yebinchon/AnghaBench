
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssbi {scalar_t__ controller_type; int lock; int write; int read; int base; } ;
struct resource {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MSM_SBI_CTRL_PMIC_ARBITER ;
 scalar_t__ MSM_SBI_CTRL_SSBI ;
 scalar_t__ MSM_SBI_CTRL_SSBI2 ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,char const*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct ssbi* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_of_platform_populate (TYPE_1__*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ssbi*) ;
 int spin_lock_init (int *) ;
 int ssbi_pa_read_bytes ;
 int ssbi_pa_write_bytes ;
 int ssbi_read_bytes ;
 int ssbi_write_bytes ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int ssbi_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct resource *mem_res;
 struct ssbi *ssbi;
 const char *type;

 ssbi = devm_kzalloc(&pdev->dev, sizeof(*ssbi), GFP_KERNEL);
 if (!ssbi)
  return -ENOMEM;

 mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ssbi->base = devm_ioremap_resource(&pdev->dev, mem_res);
 if (IS_ERR(ssbi->base))
  return PTR_ERR(ssbi->base);

 platform_set_drvdata(pdev, ssbi);

 type = of_get_property(np, "qcom,controller-type", ((void*)0));
 if (type == ((void*)0)) {
  dev_err(&pdev->dev, "Missing qcom,controller-type property\n");
  return -EINVAL;
 }
 dev_info(&pdev->dev, "SSBI controller type: '%s'\n", type);
 if (strcmp(type, "ssbi") == 0)
  ssbi->controller_type = MSM_SBI_CTRL_SSBI;
 else if (strcmp(type, "ssbi2") == 0)
  ssbi->controller_type = MSM_SBI_CTRL_SSBI2;
 else if (strcmp(type, "pmic-arbiter") == 0)
  ssbi->controller_type = MSM_SBI_CTRL_PMIC_ARBITER;
 else {
  dev_err(&pdev->dev, "Unknown qcom,controller-type\n");
  return -EINVAL;
 }

 if (ssbi->controller_type == MSM_SBI_CTRL_PMIC_ARBITER) {
  ssbi->read = ssbi_pa_read_bytes;
  ssbi->write = ssbi_pa_write_bytes;
 } else {
  ssbi->read = ssbi_read_bytes;
  ssbi->write = ssbi_write_bytes;
 }

 spin_lock_init(&ssbi->lock);

 return devm_of_platform_populate(&pdev->dev);
}
