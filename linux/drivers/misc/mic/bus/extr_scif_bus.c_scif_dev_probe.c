
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct scif_hw_dev {TYPE_1__ dev; } ;
struct scif_driver {int (* probe ) (struct scif_hw_dev*) ;} ;
struct device {int dummy; } ;


 struct scif_hw_dev* dev_to_scif (struct device*) ;
 struct scif_driver* drv_to_scif (int ) ;
 int stub1 (struct scif_hw_dev*) ;

__attribute__((used)) static int scif_dev_probe(struct device *d)
{
 struct scif_hw_dev *dev = dev_to_scif(d);
 struct scif_driver *drv = drv_to_scif(dev->dev.driver);

 return drv->probe(dev);
}
