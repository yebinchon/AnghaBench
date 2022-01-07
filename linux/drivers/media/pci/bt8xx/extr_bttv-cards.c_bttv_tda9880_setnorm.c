
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {size_t type; } ;
struct bttv {scalar_t__ audio_input; size_t tvnorm; TYPE_1__ c; } ;
struct TYPE_6__ {int gpiomask; } ;
struct TYPE_5__ {int v4l2_id; } ;


 scalar_t__ TVAUDIO_INPUT_TUNER ;
 int V4L2_STD_MN ;
 TYPE_3__* bttv_tvcards ;
 TYPE_2__* bttv_tvnorms ;
 int gpio_bits (int ,int) ;

u32 bttv_tda9880_setnorm(struct bttv *btv, u32 gpiobits)
{

 if (btv->audio_input == TVAUDIO_INPUT_TUNER) {
  if (bttv_tvnorms[btv->tvnorm].v4l2_id & V4L2_STD_MN)
   gpiobits |= 0x10000;
  else
   gpiobits &= ~0x10000;
 }

 gpio_bits(bttv_tvcards[btv->c.type].gpiomask, gpiobits);
 return gpiobits;
}
