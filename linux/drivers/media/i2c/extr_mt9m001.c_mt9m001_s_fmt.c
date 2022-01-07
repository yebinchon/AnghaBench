
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {TYPE_1__ r; int target; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int height; int width; } ;
struct mt9m001_datafmt {int colorspace; } ;
struct TYPE_4__ {int height; int width; int top; int left; } ;
struct mt9m001 {struct mt9m001_datafmt const* fmt; TYPE_2__ rect; } ;
struct i2c_client {int dummy; } ;


 int V4L2_SEL_TGT_CROP ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int mt9m001_set_selection (struct v4l2_subdev*,int *,struct v4l2_subdev_selection*) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_s_fmt(struct v4l2_subdev *sd,
    const struct mt9m001_datafmt *fmt,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 struct v4l2_subdev_selection sel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = V4L2_SEL_TGT_CROP,
  .r.left = mt9m001->rect.left,
  .r.top = mt9m001->rect.top,
  .r.width = mf->width,
  .r.height = mf->height,
 };
 int ret;


 ret = mt9m001_set_selection(sd, ((void*)0), &sel);
 if (!ret) {
  mf->width = mt9m001->rect.width;
  mf->height = mt9m001->rect.height;
  mt9m001->fmt = fmt;
  mf->colorspace = fmt->colorspace;
 }

 return ret;
}
