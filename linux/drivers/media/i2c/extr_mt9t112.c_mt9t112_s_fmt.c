
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int top; int left; int height; int width; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; } ;
struct TYPE_4__ {int top; int left; } ;
struct mt9t112_priv {TYPE_1__* format; TYPE_2__ frame; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int colorspace; } ;


 int mt9t112_set_params (struct mt9t112_priv*,struct v4l2_rect*,int ) ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t112_s_fmt(struct v4l2_subdev *sd,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t112_priv *priv = to_mt9t112(client);
 struct v4l2_rect rect = {
  .width = mf->width,
  .height = mf->height,
  .left = priv->frame.left,
  .top = priv->frame.top,
 };
 int ret;

 ret = mt9t112_set_params(priv, &rect, mf->code);

 if (!ret)
  mf->colorspace = priv->format->colorspace;

 return ret;
}
