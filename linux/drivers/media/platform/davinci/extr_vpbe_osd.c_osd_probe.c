
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device_id {int driver_data; } ;
struct platform_device {int dev; } ;
struct osd_state {int * dev; int ops; int lock; int osd_size; int osd_base_phys; int osd_base; int vpbe_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_notice (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct osd_state* devm_kzalloc (int *,int,int ) ;
 int osd_ops ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct osd_state*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int osd_probe(struct platform_device *pdev)
{
 const struct platform_device_id *pdev_id;
 struct osd_state *osd;
 struct resource *res;

 pdev_id = platform_get_device_id(pdev);
 if (!pdev_id)
  return -EINVAL;

 osd = devm_kzalloc(&pdev->dev, sizeof(struct osd_state), GFP_KERNEL);
 if (osd == ((void*)0))
  return -ENOMEM;


 osd->dev = &pdev->dev;
 osd->vpbe_type = pdev_id->driver_data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 osd->osd_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(osd->osd_base))
  return PTR_ERR(osd->osd_base);

 osd->osd_base_phys = res->start;
 osd->osd_size = resource_size(res);
 spin_lock_init(&osd->lock);
 osd->ops = osd_ops;
 platform_set_drvdata(pdev, osd);
 dev_notice(osd->dev, "OSD sub device probe success\n");

 return 0;
}
