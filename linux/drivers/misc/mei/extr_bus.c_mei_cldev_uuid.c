
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct mei_cl_device {int me_cl; } ;


 int const* mei_me_cl_uuid (int ) ;

const uuid_le *mei_cldev_uuid(const struct mei_cl_device *cldev)
{
 return mei_me_cl_uuid(cldev->me_cl);
}
