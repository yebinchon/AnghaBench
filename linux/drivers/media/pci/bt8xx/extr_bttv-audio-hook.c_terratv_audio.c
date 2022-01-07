
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
 int gpio_bits (int,unsigned int) ;
 int gpio_inout (int,int) ;

void terratv_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 unsigned int con = 0;

 if (!set) {

  t->audmode = V4L2_TUNER_MODE_LANG1;
  t->rxsubchans = V4L2_TUNER_SUB_MONO |
    V4L2_TUNER_SUB_STEREO |
    V4L2_TUNER_SUB_LANG1 |
    V4L2_TUNER_SUB_LANG2;

  return;
 }

 gpio_inout(0x180000, 0x180000);
 switch (t->audmode) {
 case 129:
  con = 0x080000;
  break;
 case 128:
  con = 0x180000;
  break;
 default:
  con = 0;
  break;
 }
 gpio_bits(0x180000, con);
 if (bttv_gpio)
  bttv_gpio_tracking(btv, "terratv");
}
