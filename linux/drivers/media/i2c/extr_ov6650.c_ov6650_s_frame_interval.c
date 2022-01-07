
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct ov6650 {int pclk_max; int pclk_limit; TYPE_1__ tpf; } ;
struct i2c_client {int dummy; } ;


 int CLKRC_DIV_MASK ;
 int FRAME_RATE_MAX ;
 int GET_CLKRC_DIV (int ) ;
 int REG_CLKRC ;
 int ov6650_reg_rmw (struct i2c_client*,int ,int ,int ) ;
 int to_clkrc (TYPE_1__*,int ,int ) ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov6650_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);
 struct v4l2_fract *tpf = &ival->interval;
 int div, ret;
 u8 clkrc;

 if (tpf->numerator == 0 || tpf->denominator == 0)
  div = 1;
 else
  div = (tpf->numerator * FRAME_RATE_MAX) / tpf->denominator;

 if (div == 0)
  div = 1;
 else if (div > GET_CLKRC_DIV(CLKRC_DIV_MASK))
  div = GET_CLKRC_DIV(CLKRC_DIV_MASK);





 priv->tpf.numerator = div;
 priv->tpf.denominator = FRAME_RATE_MAX;

 clkrc = to_clkrc(&priv->tpf, priv->pclk_limit, priv->pclk_max);

 ret = ov6650_reg_rmw(client, REG_CLKRC, clkrc, CLKRC_DIV_MASK);
 if (!ret) {
  tpf->numerator = GET_CLKRC_DIV(clkrc);
  tpf->denominator = FRAME_RATE_MAX;
 }

 return ret;
}
