
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {TYPE_3__* cfmt; TYPE_2__* win; } ;
struct TYPE_6__ {int colorspace; int code; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ rect; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct ov772x_priv *priv = to_ov772x(sd);

 if (format->pad)
  return -EINVAL;

 mf->width = priv->win->rect.width;
 mf->height = priv->win->rect.height;
 mf->code = priv->cfmt->code;
 mf->colorspace = priv->cfmt->colorspace;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
