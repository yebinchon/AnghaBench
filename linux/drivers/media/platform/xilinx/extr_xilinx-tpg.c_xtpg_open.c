
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int dummy; } ;
struct xtpg_device {int npads; struct v4l2_mbus_framefmt default_format; } ;
struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;


 struct xtpg_device* to_tpg (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int xtpg_open(struct v4l2_subdev *subdev, struct v4l2_subdev_fh *fh)
{
 struct xtpg_device *xtpg = to_tpg(subdev);
 struct v4l2_mbus_framefmt *format;

 format = v4l2_subdev_get_try_format(subdev, fh->pad, 0);
 *format = xtpg->default_format;

 if (xtpg->npads == 2) {
  format = v4l2_subdev_get_try_format(subdev, fh->pad, 1);
  *format = xtpg->default_format;
 }

 return 0;
}
