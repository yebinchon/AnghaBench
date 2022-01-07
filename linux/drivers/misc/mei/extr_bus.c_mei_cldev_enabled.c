
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int cl; } ;


 int mei_cl_is_connected (int ) ;

bool mei_cldev_enabled(struct mei_cl_device *cldev)
{
 return mei_cl_is_connected(cldev->cl);
}
