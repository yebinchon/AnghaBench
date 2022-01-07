
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov6650 {int clk; } ;
struct i2c_client {int dummy; } ;


 struct ov6650* to_ov6650 (struct i2c_client*) ;
 int v4l2_clk_disable (int ) ;
 int v4l2_clk_enable (int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);
 int ret = 0;

 if (on)
  ret = v4l2_clk_enable(priv->clk);
 else
  v4l2_clk_disable(priv->clk);

 return ret;
}
