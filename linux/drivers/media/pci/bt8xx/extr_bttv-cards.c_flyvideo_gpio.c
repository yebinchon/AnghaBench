
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {int tuner_type; int has_radio; int audio_mode_gpio; TYPE_1__ c; } ;


 int TUNER_ABSENT ;
 int UNSET ;
 int gpio_inout (int,int ) ;
 int gpio_read () ;
 int lt9415_audio ;
 int pr_info (char*,int ,...) ;
 int udelay (int) ;

__attribute__((used)) static void flyvideo_gpio(struct bttv *btv)
{
 int gpio, has_remote, has_radio, is_capture_only;
 int is_lr90, has_tda9820_tda9821;
 int tuner_type = UNSET, ttype;

 gpio_inout(0xffffff, 0);
 udelay(8);
 gpio = gpio_read();
 ttype = (gpio & 0x0f0000) >> 16;
 switch (ttype) {
 case 0x0:
  tuner_type = 2;
  break;
 case 0x2:
  tuner_type = 39;
  break;
 case 0x4:
  tuner_type = 5;
  break;
 case 0x6:
  tuner_type = 37;
  break;
 case 0xC:
  tuner_type = 3;
  break;
 default:
  pr_info("%d: FlyVideo_gpio: unknown tuner type\n", btv->c.nr);
  break;
 }

 has_remote = gpio & 0x800000;
 has_radio = gpio & 0x400000;


 is_capture_only = !(gpio & 0x008000);
 has_tda9820_tda9821 = !(gpio & 0x004000);
 is_lr90 = !(gpio & 0x002000);



 if (is_capture_only)
  tuner_type = TUNER_ABSENT;

 pr_info("%d: FlyVideo Radio=%s RemoteControl=%s Tuner=%d gpio=0x%06x\n",
  btv->c.nr, has_radio ? "yes" : "no",
  has_remote ? "yes" : "no", tuner_type, gpio);
 pr_info("%d: FlyVideo  LR90=%s tda9821/tda9820=%s capture_only=%s\n",
  btv->c.nr, is_lr90 ? "yes" : "no",
  has_tda9820_tda9821 ? "yes" : "no",
  is_capture_only ? "yes" : "no");

 if (tuner_type != UNSET)
  btv->tuner_type = tuner_type;
 btv->has_radio = has_radio;




 if (has_tda9820_tda9821)
  btv->audio_mode_gpio = lt9415_audio;

}
