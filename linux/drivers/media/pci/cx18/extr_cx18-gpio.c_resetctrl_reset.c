
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18_gpio_i2c_slave_reset {int active_lo_mask; int msecs_asserted; int msecs_recovery; int ir_reset_mask; int active_hi_mask; } ;
struct cx18 {TYPE_2__* card; } ;
struct TYPE_4__ {int xceive_pin; TYPE_1__* tuners; struct cx18_gpio_i2c_slave_reset gpio_i2c_slave_reset; } ;
struct TYPE_3__ {int tuner; } ;





 int TUNER_XC2028 ;
 int gpio_reset_seq (struct cx18*,int,int ,int,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resetctrl_reset(struct v4l2_subdev *sd, u32 val)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 const struct cx18_gpio_i2c_slave_reset *p;

 p = &cx->card->gpio_i2c_slave_reset;
 switch (val) {
 case 130:
  gpio_reset_seq(cx, p->active_lo_mask, p->active_hi_mask,
          p->msecs_asserted, p->msecs_recovery);
  break;
 case 128:
  gpio_reset_seq(cx, p->ir_reset_mask, 0,
          p->msecs_asserted, p->msecs_recovery);
  break;
 case 129:
  if (cx->card->tuners[0].tuner == TUNER_XC2028)
   gpio_reset_seq(cx, (1 << cx->card->xceive_pin), 0,
           1, 1);
  break;
 }
 return 0;
}
