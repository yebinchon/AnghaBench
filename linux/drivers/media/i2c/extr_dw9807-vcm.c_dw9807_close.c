
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int dummy; } ;
struct v4l2_subdev {int dev; } ;


 int pm_runtime_put (int ) ;

__attribute__((used)) static int dw9807_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 pm_runtime_put(sd->dev);

 return 0;
}
