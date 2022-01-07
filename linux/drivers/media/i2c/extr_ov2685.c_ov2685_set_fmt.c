
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2685 {int cur_mode; } ;


 int ov2685_fill_fmt (int ,struct v4l2_mbus_framefmt*) ;
 struct ov2685* to_ov2685 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2685_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct ov2685 *ov2685 = to_ov2685(sd);
 struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;


 ov2685_fill_fmt(ov2685->cur_mode, mbus_fmt);

 return 0;
}
