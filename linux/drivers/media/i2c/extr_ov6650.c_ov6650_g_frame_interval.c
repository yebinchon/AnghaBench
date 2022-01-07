
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {int pclk_max; int pclk_limit; int tpf; } ;
struct i2c_client {int dev; } ;


 int FRAME_RATE_MAX ;
 int GET_CLKRC_DIV (int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int to_clkrc (int *,int ,int ) ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);

 ival->interval.numerator = GET_CLKRC_DIV(to_clkrc(&priv->tpf,
   priv->pclk_limit, priv->pclk_max));
 ival->interval.denominator = FRAME_RATE_MAX;

 dev_dbg(&client->dev, "Frame interval: %u/%u s\n",
  ival->interval.numerator, ival->interval.denominator);

 return 0;
}
