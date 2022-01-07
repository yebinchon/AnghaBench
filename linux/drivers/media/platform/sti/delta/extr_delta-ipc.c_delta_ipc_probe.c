
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_driver {int dummy; } ;
struct TYPE_2__ {int driver; } ;
struct rpmsg_device {TYPE_1__ dev; } ;
struct delta_dev {struct rpmsg_device* rpmsg_device; } ;


 struct delta_dev* to_delta (struct rpmsg_driver*) ;
 struct rpmsg_driver* to_rpmsg_driver (int ) ;

__attribute__((used)) static int delta_ipc_probe(struct rpmsg_device *rpmsg_device)
{
 struct rpmsg_driver *rpdrv = to_rpmsg_driver(rpmsg_device->dev.driver);
 struct delta_dev *delta = to_delta(rpdrv);

 delta->rpmsg_device = rpmsg_device;

 return 0;
}
