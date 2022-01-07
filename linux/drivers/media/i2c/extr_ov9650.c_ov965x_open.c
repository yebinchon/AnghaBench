
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 int ov965x_get_default_format (struct v4l2_mbus_framefmt*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int ov965x_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *mf =
  v4l2_subdev_get_try_format(sd, fh->pad, 0);

 ov965x_get_default_format(mf);
 return 0;
}
