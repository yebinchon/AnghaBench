
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; int rxsubchans; } ;
struct bttv {int dummy; } ;


 int V4L2_TUNER_MODE_LANG1 ;


 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 int gpio_bits (int,int) ;

void avermedia_tvphone_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 int val;

 if (!set) {

  t->audmode = V4L2_TUNER_MODE_LANG1;
  t->rxsubchans = V4L2_TUNER_SUB_MONO |
    V4L2_TUNER_SUB_STEREO |
    V4L2_TUNER_SUB_LANG1 |
    V4L2_TUNER_SUB_LANG2;

  return;
 }

 switch (t->audmode) {
 case 129:
  val = 0x02;
  break;
 case 128:
  val = 0x01;
  break;
 default:
  return;
 }
 gpio_bits(0x03, val);
 if (bttv_gpio)
  bttv_gpio_tracking(btv, "avermedia");
}
