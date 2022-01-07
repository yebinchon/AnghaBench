
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct cm_data {TYPE_1__* res; int base; } ;
struct cal_dev {struct platform_device* pdev; } ;
struct TYPE_3__ {int end; int start; int name; } ;


 int ENOMEM ;
 struct cm_data* ERR_CAST (int ) ;
 struct cm_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int cal_dbg (int,struct cal_dev*,char*,int ,int *,int *) ;
 int cal_err (struct cal_dev*,char*) ;
 int devm_ioremap_resource (int *,TYPE_1__*) ;
 struct cm_data* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static struct cm_data *cm_create(struct cal_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 struct cm_data *cm;

 cm = devm_kzalloc(&pdev->dev, sizeof(*cm), GFP_KERNEL);
 if (!cm)
  return ERR_PTR(-ENOMEM);

 cm->res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
      "camerrx_control");
 cm->base = devm_ioremap_resource(&pdev->dev, cm->res);
 if (IS_ERR(cm->base)) {
  cal_err(dev, "failed to ioremap\n");
  return ERR_CAST(cm->base);
 }

 cal_dbg(1, dev, "ioresource %s at %pa - %pa\n",
  cm->res->name, &cm->res->start, &cm->res->end);

 return cm;
}
