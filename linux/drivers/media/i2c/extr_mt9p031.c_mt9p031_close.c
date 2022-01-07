
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int mt9p031_set_power (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int mt9p031_close(struct v4l2_subdev *subdev, struct v4l2_subdev_fh *fh)
{
 return mt9p031_set_power(subdev, 0);
}
