
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tveeprom {int model; int has_radio; int tuner_type; } ;
struct TYPE_3__ {size_t type; int nr; } ;
struct bttv {int radio_uses_msp_demodulator; TYPE_1__ c; int has_radio; int tuner_type; } ;
struct TYPE_4__ {int name; } ;


 size_t BTTV_BOARD_HAUPPAUGE_IMPACTVCB ;
 TYPE_2__* bttv_tvcards ;
 int eeprom_data ;
 int pr_info (char*,int ,int,...) ;
 int tveeprom_hauppauge_analog (struct tveeprom*,int ) ;

__attribute__((used)) static void hauppauge_eeprom(struct bttv *btv)
{
 struct tveeprom tv;

 tveeprom_hauppauge_analog(&tv, eeprom_data);
 btv->tuner_type = tv.tuner_type;
 btv->has_radio = tv.has_radio;

 pr_info("%d: Hauppauge eeprom indicates model#%d\n",
  btv->c.nr, tv.model);





 if(tv.model == 64900) {
  pr_info("%d: Switching board type from %s to %s\n",
   btv->c.nr,
   bttv_tvcards[btv->c.type].name,
   bttv_tvcards[BTTV_BOARD_HAUPPAUGE_IMPACTVCB].name);
  btv->c.type = BTTV_BOARD_HAUPPAUGE_IMPACTVCB;
 }


 if (tv.model == 61334)
  btv->radio_uses_msp_demodulator = 1;
}
