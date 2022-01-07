
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {int has_remote; int tuner_type; TYPE_1__ c; } ;


 int TUNER_LG_NTSC_NEW_TAPC ;
 int* eeprom_data ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ,int,int) ;
 int* tuner_0_table ;
 int* tuner_1_table ;

__attribute__((used)) static void avermedia_eeprom(struct bttv *btv)
{
 int tuner_make, tuner_tv_fm, tuner_format, tuner_type = 0;

 tuner_make = (eeprom_data[0x41] & 0x7);
 tuner_tv_fm = (eeprom_data[0x41] & 0x18) >> 3;
 tuner_format = (eeprom_data[0x42] & 0xf0) >> 4;
 btv->has_remote = (eeprom_data[0x42] & 0x01);

 if (tuner_make == 0 || tuner_make == 2)
  if (tuner_format <= 0x0a)
   tuner_type = tuner_0_table[tuner_format];
 if (tuner_make == 1)
  if (tuner_format <= 9)
   tuner_type = tuner_1_table[tuner_format];

 if (tuner_make == 4)
  if (tuner_format == 0x09)
   tuner_type = TUNER_LG_NTSC_NEW_TAPC;

 pr_info("%d: Avermedia eeprom[0x%02x%02x]: tuner=",
  btv->c.nr, eeprom_data[0x41], eeprom_data[0x42]);
 if (tuner_type) {
  btv->tuner_type = tuner_type;
  pr_cont("%d", tuner_type);
 } else
  pr_cont("Unknown type");
 pr_cont(" radio:%s remote control:%s\n",
        tuner_tv_fm ? "yes" : "no",
        btv->has_remote ? "yes" : "no");
}
