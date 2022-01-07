
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int dummy; } ;


 int mei_cl_bus_dev_destroy (struct mei_cl_device*) ;
 int mei_cl_bus_dev_stop (struct mei_cl_device*) ;

__attribute__((used)) static void mei_cl_bus_remove_device(struct mei_cl_device *cldev)
{
 mei_cl_bus_dev_stop(cldev);
 mei_cl_bus_dev_destroy(cldev);
}
