
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7183 {int oe_pin; } ;


 int gpio_set_value (int ,int) ;
 struct adv7183* to_adv7183 (struct v4l2_subdev*) ;
 int udelay (int) ;

__attribute__((used)) static int adv7183_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct adv7183 *decoder = to_adv7183(sd);

 if (enable)
  gpio_set_value(decoder->oe_pin, 0);
 else
  gpio_set_value(decoder->oe_pin, 1);
 udelay(1);
 return 0;
}
