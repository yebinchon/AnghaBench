
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; } ;
struct bttv {TYPE_1__ c; int has_radio_tuner; int users; scalar_t__ opt_automute; } ;
struct TYPE_4__ {int gpiomute; int* gpiomux; int gpiomask; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_HLOC ;


 int * audio_modes ;
 int btread (int ) ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,int ) ;
 int bttv_tda9880_setnorm (struct bttv*,int) ;
 TYPE_2__* bttv_tvcards ;
 int gpio_bits (int ,int) ;
 int gpio_inout (int ,int ) ;

__attribute__((used)) static void
audio_mux_gpio(struct bttv *btv, int input, int mute)
{
 int gpio_val, signal, mute_gpio;

 gpio_inout(bttv_tvcards[btv->c.type].gpiomask,
     bttv_tvcards[btv->c.type].gpiomask);
 signal = btread(BT848_DSTATUS) & BT848_DSTATUS_HLOC;


 mute_gpio = mute || (btv->opt_automute && (!signal || !btv->users)
    && !btv->has_radio_tuner);

 if (mute_gpio)
  gpio_val = bttv_tvcards[btv->c.type].gpiomute;
 else
  gpio_val = bttv_tvcards[btv->c.type].gpiomux[input];

 switch (btv->c.type) {
 case 128:
 case 129:
  gpio_val = bttv_tda9880_setnorm(btv, gpio_val);
  break;

 default:
  gpio_bits(bttv_tvcards[btv->c.type].gpiomask, gpio_val);
 }

 if (bttv_gpio)
  bttv_gpio_tracking(btv, audio_modes[mute_gpio ? 4 : input]);
}
