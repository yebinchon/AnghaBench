
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_7__ {int type; size_t nr; int i2c_adap; int v4l2_dev; } ;
struct TYPE_6__ {int pll_ifreq; int pll_current; void* pll_crystal; int pll_ofreq; } ;
struct TYPE_5__ {int wren; int most; int clk; int data; } ;
struct bttv {scalar_t__ tuner_type; int has_radio; int has_tea575x; int cardid; int id; int revision; int has_remote; int gpioirq; TYPE_3__ c; void* sd_tvaudio; void* sd_tda7432; void* sd_msp34xx; scalar_t__ has_saa6588; scalar_t__ audio_mode_gpio; scalar_t__ volume_gpio; scalar_t__ svhs; scalar_t__ dig; TYPE_2__ pll; TYPE_1__ tea_gpio; } ;
struct TYPE_8__ {scalar_t__ pll; scalar_t__ tuner_type; scalar_t__ video_inputs; scalar_t__ svhs; int no_tda7432; scalar_t__ msp34xx_alt; int no_msp34xx; scalar_t__ audio_mode_gpio; scalar_t__ volume_gpio; int no_gpioirq; scalar_t__ has_remote; scalar_t__ has_radio; scalar_t__ has_dig_in; } ;


 void* BT848_IFORM_XT0 ;
 void* BT848_IFORM_XT1 ;
 int BTTV_BOARD_UNKNOWN ;


 unsigned short const* I2C_ADDRS (int const) ;




 scalar_t__ NO_SVHS ;
 scalar_t__ PLL_14 ;
 scalar_t__ PLL_28 ;
 scalar_t__ PLL_35 ;
 scalar_t__ TUNER_ABSENT ;
 scalar_t__ TUNER_TEMIC_NTSC ;
 scalar_t__ UNSET ;
 int* audiodev ;
 scalar_t__ autoload ;
 int avermedia_eeprom (struct bttv*) ;
 int bttv_readee (struct bttv*,int ,int) ;
 TYPE_4__* bttv_tvcards ;
 int eeprom_data ;
 int flyvideo_gpio (struct bttv*) ;
 int gv800s_init (struct bttv*) ;
 int hauppauge_eeprom (struct bttv*) ;
 int identify_by_eeprom (struct bttv*,int ) ;
 int init_PXC200 (struct bttv*) ;
 int init_ids_eagle (struct bttv*) ;
 int init_lmlbt4x (struct bttv*) ;
 int kodicom4400r_init (struct bttv*) ;
 int miro_pinnacle_gpio (struct bttv*) ;
 int modtec_eeprom (struct bttv*) ;
 int osprey_eeprom (struct bttv*,int ) ;
 int picolo_tetra_init (struct bttv*) ;
 int* pll ;
 int pr_info (char*,size_t,...) ;
 int pr_warn (char*,size_t) ;
 scalar_t__* remote ;
 scalar_t__* saa6588 ;
 scalar_t__* svhs ;
 int tea575x_init (struct bttv*) ;
 int terratec_active_radio_upgrade (struct bttv*) ;
 int tibetCS16_init (struct bttv*) ;
 scalar_t__* tuner ;
 unsigned short const* tvaudio_addrs () ;
 void* v4l2_i2c_new_subdev (int *,int *,char*,int ,unsigned short const*) ;

void bttv_init_card2(struct bttv *btv)
{
 btv->tuner_type = UNSET;

 if (BTTV_BOARD_UNKNOWN == btv->c.type) {
  bttv_readee(btv,eeprom_data,0xa0);
  identify_by_eeprom(btv,eeprom_data);
 }

 switch (btv->c.type) {
 case 156:
 case 155:
 case 140:
 case 139:

  miro_pinnacle_gpio(btv);
  break;
 case 169:
 case 157:
 case 160:
 case 172:
 case 134:
 case 174:
 case 168:
 case 171:
 case 170:
 case 173:
 case 161:
  flyvideo_gpio(btv);
  break;
 case 166:
 case 165:
 case 164:

  bttv_readee(btv,eeprom_data,0xa0);
  hauppauge_eeprom(btv);
  break;
 case 176:
 case 175:
  bttv_readee(btv,eeprom_data,0xa0);
  avermedia_eeprom(btv);
  break;
 case 138:
  init_PXC200(btv);
  break;
 case 141:
  picolo_tetra_init(btv);
  break;
 case 133:
  btv->has_radio = 1;
  btv->has_tea575x = 1;
  btv->tea_gpio.wren = 5;
  btv->tea_gpio.most = 6;
  btv->tea_gpio.clk = 3;
  btv->tea_gpio.data = 4;
  tea575x_init(btv);
  break;
 case 132:
 case 136:
  terratec_active_radio_upgrade(btv);
  break;
 case 158:
  if (btv->cardid == 0x3002144f) {
   btv->has_radio=1;
   pr_info("%d: radio detected by subsystem id (CPH05x)\n",
    btv->c.nr);
  }
  break;
 case 137:
  if (btv->cardid == 0x3060121a) {


   btv->has_radio=0;
   btv->tuner_type=TUNER_TEMIC_NTSC;
  }
  break;
 case 152:
 case 151:
 case 153:
 case 150:
 case 149:
 case 145:
 case 146:
 case 147:
 case 144:
 case 143:
 case 142:
 case 148:
  bttv_readee(btv,eeprom_data,0xa0);
  osprey_eeprom(btv, eeprom_data);
  break;
 case 163:
  init_ids_eagle(btv);
  break;
 case 154:
  bttv_readee(btv,eeprom_data,0xa0);
  modtec_eeprom(btv);
  break;
 case 159:
  init_lmlbt4x(btv);
  break;
 case 135:
  tibetCS16_init(btv);
  break;
 case 162:
  kodicom4400r_init(btv);
  break;
 case 167:
  gv800s_init(btv);
  break;
 }


 if (!(btv->id==848 && btv->revision==0x11)) {

  if (PLL_28 == bttv_tvcards[btv->c.type].pll) {
   btv->pll.pll_ifreq=28636363;
   btv->pll.pll_crystal=BT848_IFORM_XT0;
  }
  if (PLL_35 == bttv_tvcards[btv->c.type].pll) {
   btv->pll.pll_ifreq=35468950;
   btv->pll.pll_crystal=BT848_IFORM_XT1;
  }
  if (PLL_14 == bttv_tvcards[btv->c.type].pll) {
   btv->pll.pll_ifreq = 14318181;
   btv->pll.pll_crystal = BT848_IFORM_XT0;
  }

  switch (pll[btv->c.nr]) {
  case 0:
   btv->pll.pll_crystal = 0;
   btv->pll.pll_ifreq = 0;
   btv->pll.pll_ofreq = 0;
   break;
  case 1:
  case 28:
   btv->pll.pll_ifreq = 28636363;
   btv->pll.pll_ofreq = 0;
   btv->pll.pll_crystal = BT848_IFORM_XT0;
   break;
  case 2:
  case 35:
   btv->pll.pll_ifreq = 35468950;
   btv->pll.pll_ofreq = 0;
   btv->pll.pll_crystal = BT848_IFORM_XT1;
   break;
  case 3:
  case 14:
   btv->pll.pll_ifreq = 14318181;
   btv->pll.pll_ofreq = 0;
   btv->pll.pll_crystal = BT848_IFORM_XT0;
   break;
  }
 }
 btv->pll.pll_current = -1;


 if (UNSET != bttv_tvcards[btv->c.type].tuner_type)
  if (UNSET == btv->tuner_type)
   btv->tuner_type = bttv_tvcards[btv->c.type].tuner_type;
 if (UNSET != tuner[btv->c.nr])
  btv->tuner_type = tuner[btv->c.nr];

 if (btv->tuner_type == TUNER_ABSENT)
  pr_info("%d: tuner absent\n", btv->c.nr);
 else if (btv->tuner_type == UNSET)
  pr_warn("%d: tuner type unset\n", btv->c.nr);
 else
  pr_info("%d: tuner type=%d\n", btv->c.nr, btv->tuner_type);

 if (autoload != UNSET) {
  pr_warn("%d: the autoload option is obsolete\n", btv->c.nr);
  pr_warn("%d: use option msp3400, tda7432 or tvaudio to override which audio module should be used\n",
   btv->c.nr);
 }

 if (UNSET == btv->tuner_type)
  btv->tuner_type = TUNER_ABSENT;

 btv->dig = bttv_tvcards[btv->c.type].has_dig_in ?
     bttv_tvcards[btv->c.type].video_inputs - 1 : UNSET;
 btv->svhs = bttv_tvcards[btv->c.type].svhs == NO_SVHS ?
      UNSET : bttv_tvcards[btv->c.type].svhs;
 if (svhs[btv->c.nr] != UNSET)
  btv->svhs = svhs[btv->c.nr];
 if (remote[btv->c.nr] != UNSET)
  btv->has_remote = remote[btv->c.nr];

 if (bttv_tvcards[btv->c.type].has_radio)
  btv->has_radio = 1;
 if (bttv_tvcards[btv->c.type].has_remote)
  btv->has_remote = 1;
 if (!bttv_tvcards[btv->c.type].no_gpioirq)
  btv->gpioirq = 1;
 if (bttv_tvcards[btv->c.type].volume_gpio)
  btv->volume_gpio = bttv_tvcards[btv->c.type].volume_gpio;
 if (bttv_tvcards[btv->c.type].audio_mode_gpio)
  btv->audio_mode_gpio = bttv_tvcards[btv->c.type].audio_mode_gpio;

 if (btv->tuner_type == TUNER_ABSENT)
  return;

 if (btv->has_saa6588 || saa6588[btv->c.nr]) {

  static const unsigned short addrs[] = {
   0x20 >> 1,
   0x22 >> 1,
   128
  };
  struct v4l2_subdev *sd;

  sd = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "saa6588", 0, addrs);
  btv->has_saa6588 = (sd != ((void*)0));
 }






 switch (audiodev[btv->c.nr]) {
 case -1:
  return;

 case 0:
  break;

 case 1: {

  static const unsigned short addrs[] = {
   131 >> 1,
   130 >> 1,
   128
  };

  btv->sd_msp34xx = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "msp3400", 0, addrs);
  if (btv->sd_msp34xx)
   return;
  goto no_audio;
 }

 case 2: {

  static const unsigned short addrs[] = {
   129 >> 1,
   128
  };

  if (v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
    &btv->c.i2c_adap, "tda7432", 0, addrs))
   return;
  goto no_audio;
 }

 case 3: {

  btv->sd_tvaudio = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "tvaudio", 0, tvaudio_addrs());
  if (btv->sd_tvaudio)
   return;
  goto no_audio;
 }

 default:
  pr_warn("%d: unknown audiodev value!\n", btv->c.nr);
  return;
 }







 if (!bttv_tvcards[btv->c.type].no_msp34xx) {
  btv->sd_msp34xx = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "msp3400",
   0, I2C_ADDRS(131 >> 1));
 } else if (bttv_tvcards[btv->c.type].msp34xx_alt) {
  btv->sd_msp34xx = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "msp3400",
   0, I2C_ADDRS(130 >> 1));
 }


 if (btv->sd_msp34xx)
  return;


 btv->sd_tvaudio = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
  &btv->c.i2c_adap, "tvaudio", 0, tvaudio_addrs());
 if (btv->sd_tvaudio) {


  v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
   &btv->c.i2c_adap, "tvaudio", 0, tvaudio_addrs());
 }


 if (!bttv_tvcards[btv->c.type].no_tda7432) {
  static const unsigned short addrs[] = {
   129 >> 1,
   128
  };

  btv->sd_tda7432 = v4l2_i2c_new_subdev(&btv->c.v4l2_dev,
    &btv->c.i2c_adap, "tda7432", 0, addrs);
  if (btv->sd_tda7432)
   return;
 }
 if (btv->sd_tvaudio)
  return;

no_audio:
 pr_warn("%d: audio absent, no audio device found!\n", btv->c.nr);
}
