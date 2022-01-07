
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct v4l2_frequency {scalar_t__ type; int frequency; } const v4l2_frequency ;
struct TYPE_2__ {int freq; } ;
struct bttv {int tv_freq; TYPE_1__ tea; int radio_freq; scalar_t__ has_tea575x; } ;


 scalar_t__ V4L2_TUNER_RADIO ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_frequency const*) ;
 int g_frequency ;
 int radio_enable (struct bttv*) ;
 int s_frequency ;
 int snd_tea575x_set_freq (TYPE_1__*) ;
 int tuner ;

__attribute__((used)) static void bttv_set_frequency(struct bttv *btv, const struct v4l2_frequency *f)
{
 struct v4l2_frequency new_freq = *f;

 bttv_call_all(btv, tuner, s_frequency, f);


 bttv_call_all(btv, tuner, g_frequency, &new_freq);
 if (new_freq.type == V4L2_TUNER_RADIO) {
  radio_enable(btv);
  btv->radio_freq = new_freq.frequency;
  if (btv->has_tea575x) {
   btv->tea.freq = btv->radio_freq;
   snd_tea575x_set_freq(&btv->tea);
  }
 } else {
  btv->tv_freq = new_freq.frequency;
 }
}
