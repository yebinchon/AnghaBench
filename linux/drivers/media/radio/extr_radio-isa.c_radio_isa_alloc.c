
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int name; } ;
struct radio_isa_driver {TYPE_1__* ops; } ;
struct radio_isa_card {struct v4l2_device v4l2_dev; struct radio_isa_driver* drv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct radio_isa_card* (* alloc ) () ;} ;


 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct radio_isa_card*) ;
 int strscpy (int ,int ,int) ;
 struct radio_isa_card* stub1 () ;

__attribute__((used)) static struct radio_isa_card *radio_isa_alloc(struct radio_isa_driver *drv,
    struct device *pdev)
{
 struct v4l2_device *v4l2_dev;
 struct radio_isa_card *isa = drv->ops->alloc();
 if (!isa)
  return ((void*)0);

 dev_set_drvdata(pdev, isa);
 isa->drv = drv;
 v4l2_dev = &isa->v4l2_dev;
 strscpy(v4l2_dev->name, dev_name(pdev), sizeof(v4l2_dev->name));

 return isa;
}
