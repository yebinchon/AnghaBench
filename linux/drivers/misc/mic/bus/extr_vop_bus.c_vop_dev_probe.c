
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_driver {int (* probe ) (struct vop_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct vop_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct vop_device* dev_to_vop (struct device*) ;
 struct vop_driver* drv_to_vop (int ) ;
 int stub1 (struct vop_device*) ;

__attribute__((used)) static int vop_dev_probe(struct device *d)
{
 struct vop_device *dev = dev_to_vop(d);
 struct vop_driver *drv = drv_to_vop(dev->dev.driver);

 return drv->probe(dev);
}
