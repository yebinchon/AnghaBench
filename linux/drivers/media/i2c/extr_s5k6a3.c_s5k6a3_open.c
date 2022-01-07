
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;


 int S5K6A3_DEFAULT_HEIGHT ;
 int S5K6A3_DEFAULT_WIDTH ;
 struct v4l2_mbus_framefmt* s5k6a3_formats ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int s5k6a3_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *format = v4l2_subdev_get_try_format(sd, fh->pad, 0);

 *format = s5k6a3_formats[0];
 format->width = S5K6A3_DEFAULT_WIDTH;
 format->height = S5K6A3_DEFAULT_HEIGHT;

 return 0;
}
