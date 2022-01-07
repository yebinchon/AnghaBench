
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {struct mei_cl_device* cl; int bus; int me_cl; } ;
struct device {int dummy; } ;


 int kfree (struct mei_cl_device*) ;
 int mei_cl_unlink (struct mei_cl_device*) ;
 int mei_dev_bus_put (int ) ;
 int mei_me_cl_put (int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static void mei_cl_bus_dev_release(struct device *dev)
{
 struct mei_cl_device *cldev = to_mei_cl_device(dev);

 if (!cldev)
  return;

 mei_me_cl_put(cldev->me_cl);
 mei_dev_bus_put(cldev->bus);
 mei_cl_unlink(cldev->cl);
 kfree(cldev->cl);
 kfree(cldev);
}
