
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct prcm_data {int nsubdevs; int subdevs; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct prcm_data* data; } ;


 int EINVAL ;
 int ENOENT ;
 int IORESOURCE_MEM ;
 int dev_err (TYPE_1__*,char*) ;
 int mfd_add_devices (TYPE_1__*,int ,int ,int ,struct resource*,int,int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int sun6i_prcm_dt_ids ;

__attribute__((used)) static int sun6i_prcm_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct prcm_data *data;
 struct resource *res;
 int ret;

 match = of_match_node(sun6i_prcm_dt_ids, pdev->dev.of_node);
 if (!match)
  return -EINVAL;

 data = match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "no prcm memory region provided\n");
  return -ENOENT;
 }

 ret = mfd_add_devices(&pdev->dev, 0, data->subdevs, data->nsubdevs,
         res, -1, ((void*)0));
 if (ret) {
  dev_err(&pdev->dev, "failed to add subdevices\n");
  return ret;
 }

 return 0;
}
