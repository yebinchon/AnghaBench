
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_count; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;


 int ENOIOCTLCMD ;
 int ENXIO ;
 int core ;
 int s_power ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;

__attribute__((used)) static int __subdev_set_power(struct v4l2_subdev *sd, int on)
{
 int *use_count;
 int ret;

 if (sd == ((void*)0))
  return -ENXIO;

 use_count = &sd->entity.use_count;
 if (on && (*use_count)++ > 0)
  return 0;
 else if (!on && (*use_count == 0 || --(*use_count) > 0))
  return 0;
 ret = v4l2_subdev_call(sd, core, s_power, on);

 return ret != -ENOIOCTLCMD ? ret : 0;
}
