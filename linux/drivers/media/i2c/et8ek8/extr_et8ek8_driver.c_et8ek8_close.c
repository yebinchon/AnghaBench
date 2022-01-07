
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int et8ek8_set_power (struct v4l2_subdev*,int) ;

__attribute__((used)) static int et8ek8_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 return et8ek8_set_power(sd, 0);
}
