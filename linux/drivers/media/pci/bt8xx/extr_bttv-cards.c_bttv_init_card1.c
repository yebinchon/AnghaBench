
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct bttv {int use_i2c_hw; TYPE_1__ c; } ;
struct TYPE_4__ {int has_dvb; } ;
 int boot_msp34xx (struct bttv*,int) ;
 int bttv_reset_audio (struct bttv*) ;
 TYPE_2__* bttv_tvcards ;
 int init_PCI8604PW (struct bttv*) ;
 int init_RTV24 (struct bttv*) ;
 int pvr_boot (struct bttv*) ;

void bttv_init_card1(struct bttv *btv)
{
 switch (btv->c.type) {
 case 135:
 case 134:
  boot_msp34xx(btv,5);
  break;
 case 129:
 case 128:
  boot_msp34xx(btv,20);
  break;
 case 136:
  boot_msp34xx(btv,11);
  break;
 case 133:
  pvr_boot(btv);
  break;
 case 130:
 case 137:
 case 131:
  btv->use_i2c_hw = 1;
  break;
 case 138:
  init_RTV24( btv );
  break;
 case 132:
  init_PCI8604PW(btv);
  break;

 }
 if (!bttv_tvcards[btv->c.type].has_dvb)
  bttv_reset_audio(btv);
}
