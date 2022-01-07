
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct rvin_dev {int dummy; } ;


 int ENODEV ;
 int ENOIOCTLCMD ;
 int core ;
 int s_power ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_power_parallel(struct rvin_dev *vin, bool on)
{
 struct v4l2_subdev *sd = vin_to_source(vin);
 int power = on ? 1 : 0;
 int ret;

 ret = v4l2_subdev_call(sd, core, s_power, power);
 if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
  return ret;

 return 0;
}
