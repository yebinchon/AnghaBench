
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; int rxsubchans; } ;
struct bttv {int dummy; } ;





 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int gpio_bits (int,unsigned int) ;
 int gpio_inout (int,int) ;

void gvbctv3pci_audio(struct bttv *btv, struct v4l2_tuner *t, int set)
{
 unsigned int con;

 if (!set) {

  t->audmode = 130;
  t->rxsubchans = V4L2_TUNER_SUB_MONO |
    V4L2_TUNER_SUB_STEREO |
    V4L2_TUNER_SUB_LANG1 |
    V4L2_TUNER_SUB_LANG2;

  return;
 }

 gpio_inout(0x300, 0x300);
 switch (t->audmode) {
 case 130:
 default:
  con = 0x000;
  break;
 case 129:
  con = 0x300;
  break;
 case 128:
  con = 0x200;
  break;
 }
 gpio_bits(0x300, con);
}
