
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct ov5670 {int mutex; TYPE_1__* cur_mode; } ;
struct TYPE_2__ {int height; int width; } ;


 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int V4L2_FIELD_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov5670* to_ov5670 (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int ov5670_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct ov5670 *ov5670 = to_ov5670(sd);
 struct v4l2_mbus_framefmt *try_fmt =
    v4l2_subdev_get_try_format(sd, fh->pad, 0);

 mutex_lock(&ov5670->mutex);


 try_fmt->width = ov5670->cur_mode->width;
 try_fmt->height = ov5670->cur_mode->height;
 try_fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
 try_fmt->field = V4L2_FIELD_NONE;


 mutex_unlock(&ov5670->mutex);

 return 0;
}
