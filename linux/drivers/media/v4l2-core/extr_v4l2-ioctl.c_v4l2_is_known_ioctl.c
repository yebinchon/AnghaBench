
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ioctl; } ;


 size_t V4L2_IOCTLS ;
 size_t _IOC_NR (unsigned int) ;
 TYPE_1__* v4l2_ioctls ;

__attribute__((used)) static bool v4l2_is_known_ioctl(unsigned int cmd)
{
 if (_IOC_NR(cmd) >= V4L2_IOCTLS)
  return 0;
 return v4l2_ioctls[_IOC_NR(cmd)].ioctl == cmd;
}
