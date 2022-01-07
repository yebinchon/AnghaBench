
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct cx18 {TYPE_2__* card; } ;
struct TYPE_3__ {int radio; int mask; } ;
struct TYPE_4__ {TYPE_1__ gpio_audio_input; } ;


 int gpio_update (struct cx18*,int ,int ) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int gpiomux_s_radio(struct v4l2_subdev *sd)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);






 gpio_update(cx, cx->card->gpio_audio_input.mask,
   cx->card->gpio_audio_input.radio);
 return 0;
}
