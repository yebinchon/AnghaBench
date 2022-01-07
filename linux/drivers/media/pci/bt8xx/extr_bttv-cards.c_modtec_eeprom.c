
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; int tuner_type; } ;


 int TUNER_ALPS_TSBB5_PAL_I ;
 int TUNER_PHILIPS_NTSC ;
 int TUNER_TEMIC_4066FY5_PAL_I ;
 int * eeprom_data ;
 int pr_info (char*,int ,int *) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static void modtec_eeprom(struct bttv *btv)
{
 if( strncmp(&(eeprom_data[0x1e]),"Temic 4066 FY5",14) ==0) {
  btv->tuner_type=TUNER_TEMIC_4066FY5_PAL_I;
  pr_info("%d: Modtec: Tuner autodetected by eeprom: %s\n",
   btv->c.nr, &eeprom_data[0x1e]);
 } else if (strncmp(&(eeprom_data[0x1e]),"Alps TSBB5",10) ==0) {
  btv->tuner_type=TUNER_ALPS_TSBB5_PAL_I;
  pr_info("%d: Modtec: Tuner autodetected by eeprom: %s\n",
   btv->c.nr, &eeprom_data[0x1e]);
 } else if (strncmp(&(eeprom_data[0x1e]),"Philips FM1246",14) ==0) {
  btv->tuner_type=TUNER_PHILIPS_NTSC;
  pr_info("%d: Modtec: Tuner autodetected by eeprom: %s\n",
   btv->c.nr, &eeprom_data[0x1e]);
 } else {
  pr_info("%d: Modtec: Unknown TunerString: %s\n",
   btv->c.nr, &eeprom_data[0x1e]);
 }
}
