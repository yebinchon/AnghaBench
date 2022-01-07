
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; int code; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t112_priv {scalar_t__ num_formats; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int code; } ;


 int EINVAL ;
 TYPE_1__* mt9t112_cfmts ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t112_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t112_priv *priv = to_mt9t112(client);

 if (code->pad || code->index >= priv->num_formats)
  return -EINVAL;

 code->code = mt9t112_cfmts[code->index].code;

 return 0;
}
