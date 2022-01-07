
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int adp1653_set_power (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int adp1653_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 return adp1653_set_power(sd, 0);
}
