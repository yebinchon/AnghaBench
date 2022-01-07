
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int dummy; } ;
struct v4l2_subdev {int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int dw9807_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 int rval;

 rval = pm_runtime_get_sync(sd->dev);
 if (rval < 0) {
  pm_runtime_put_noidle(sd->dev);
  return rval;
 }

 return 0;
}
