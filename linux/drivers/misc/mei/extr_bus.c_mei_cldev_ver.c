
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_cl_device {int me_cl; } ;


 int mei_me_cl_ver (int ) ;

u8 mei_cldev_ver(const struct mei_cl_device *cldev)
{
 return mei_me_cl_ver(cldev->me_cl);
}
