
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9t112_priv {int dummy; } ;
struct i2c_client {int dummy; } ;


 int mt9t112_power_off (struct mt9t112_priv*) ;
 int mt9t112_power_on (struct mt9t112_priv*) ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t112_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t112_priv *priv = to_mt9t112(client);

 return on ? mt9t112_power_on(priv) :
      mt9t112_power_off(priv);
}
