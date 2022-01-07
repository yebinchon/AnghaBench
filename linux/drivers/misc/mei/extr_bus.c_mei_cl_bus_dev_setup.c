
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl_device {int do_match; } ;


 int mei_cl_bus_dev_fixup (struct mei_cl_device*) ;
 int mei_cl_bus_set_name (struct mei_cl_device*) ;

__attribute__((used)) static bool mei_cl_bus_dev_setup(struct mei_device *bus,
     struct mei_cl_device *cldev)
{
 cldev->do_match = 1;
 mei_cl_bus_dev_fixup(cldev);


 if (cldev->do_match)
  mei_cl_bus_set_name(cldev);

 return cldev->do_match == 1;
}
