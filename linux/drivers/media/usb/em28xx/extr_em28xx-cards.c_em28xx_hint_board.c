
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct em28xx {scalar_t__ em28xx_sensor; size_t model; scalar_t__ hash; scalar_t__ i2c_hash; TYPE_1__* intf; int tuner_type; int def_i2c_bus; scalar_t__ is_webcam; } ;
struct TYPE_8__ {scalar_t__ name; } ;
struct TYPE_7__ {scalar_t__ hash; size_t model; int tuner; } ;
struct TYPE_6__ {int dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 size_t EM2750_BOARD_UNKNOWN ;
 size_t EM2820_BOARD_SILVERCREST_WEBCAM ;
 scalar_t__ EM28XX_MT9M001 ;
 scalar_t__ EM28XX_MT9M111 ;
 scalar_t__ EM28XX_MT9V011 ;
 int dev_err (int *,char*,...) ;
 int em28xx_bcount ;
 TYPE_4__* em28xx_boards ;
 int em28xx_do_i2c_scan (struct em28xx*,int ) ;
 TYPE_2__* em28xx_eeprom_hash ;
 TYPE_2__* em28xx_i2c_hash ;

__attribute__((used)) static int em28xx_hint_board(struct em28xx *dev)
{
 int i;

 if (dev->is_webcam) {
  if (dev->em28xx_sensor == EM28XX_MT9V011) {
   dev->model = EM2820_BOARD_SILVERCREST_WEBCAM;
  } else if (dev->em28xx_sensor == EM28XX_MT9M001 ||
      dev->em28xx_sensor == EM28XX_MT9M111) {
   dev->model = EM2750_BOARD_UNKNOWN;
  }


  return 0;
 }
 for (i = 0; i < ARRAY_SIZE(em28xx_eeprom_hash); i++) {
  if (dev->hash == em28xx_eeprom_hash[i].hash) {
   dev->model = em28xx_eeprom_hash[i].model;
   dev->tuner_type = em28xx_eeprom_hash[i].tuner;

   dev_err(&dev->intf->dev,
    "Your board has no unique USB ID.\n"
    "A hint were successfully done, based on eeprom hash.\n"
    "This method is not 100%% failproof.\n"
    "If the board were misdetected, please email this log to:\n"
    "\tV4L Mailing List  <linux-media@vger.kernel.org>\n"
    "Board detected as %s\n",
          em28xx_boards[dev->model].name);

   return 0;
  }
 }
 if (!dev->i2c_hash)
  em28xx_do_i2c_scan(dev, dev->def_i2c_bus);

 for (i = 0; i < ARRAY_SIZE(em28xx_i2c_hash); i++) {
  if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
   dev->model = em28xx_i2c_hash[i].model;
   dev->tuner_type = em28xx_i2c_hash[i].tuner;
   dev_err(&dev->intf->dev,
    "Your board has no unique USB ID.\n"
    "A hint were successfully done, based on i2c devicelist hash.\n"
    "This method is not 100%% failproof.\n"
    "If the board were misdetected, please email this log to:\n"
    "\tV4L Mailing List  <linux-media@vger.kernel.org>\n"
    "Board detected as %s\n",
    em28xx_boards[dev->model].name);

   return 0;
  }
 }

 dev_err(&dev->intf->dev,
  "Your board has no unique USB ID and thus need a hint to be detected.\n"
  "You may try to use card=<n> insmod option to workaround that.\n"
  "Please send an email with this log to:\n"
  "\tV4L Mailing List <linux-media@vger.kernel.org>\n"
  "Board eeprom hash is 0x%08lx\n"
  "Board i2c devicelist hash is 0x%08lx\n",
  dev->hash, dev->i2c_hash);

 dev_err(&dev->intf->dev,
  "Here is a list of valid choices for the card=<n> insmod option:\n");
 for (i = 0; i < em28xx_bcount; i++) {
  dev_err(&dev->intf->dev,
   "    card=%d -> %s\n", i, em28xx_boards[i].name);
 }
 return -1;
}
