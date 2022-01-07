
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_std_id ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18 {size_t audio_input; TYPE_3__* card; } ;
struct TYPE_5__ {int mask; int tuner; int linein; } ;
struct TYPE_6__ {TYPE_2__ gpio_audio_input; TYPE_1__* audio_inputs; } ;
struct TYPE_4__ {int muxer_input; } ;


 int gpio_update (struct cx18*,int ,int ) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int gpiomux_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 u32 data;

 switch (cx->card->audio_inputs[cx->audio_input].muxer_input) {
 case 1:
  data = cx->card->gpio_audio_input.linein;
  break;
 case 0:
  data = cx->card->gpio_audio_input.tuner;
  break;
 default:





  data = cx->card->gpio_audio_input.tuner;
  break;
 }
 gpio_update(cx, cx->card->gpio_audio_input.mask, data);
 return 0;
}
