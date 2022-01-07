
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tveeprom {int audio_processor; scalar_t__ tuner_type; } ;
struct TYPE_5__ {scalar_t__ valid; int tuner_gpio; int name; } ;
struct em28xx {scalar_t__ em28xx_sensor; int model; int i2s_speed; int has_msp34xx; scalar_t__* amux_map; scalar_t__ tuner_type; int * eedata; TYPE_2__* intf; TYPE_1__ board; scalar_t__ is_webcam; } ;
struct TYPE_8__ {scalar_t__ amux; int type; } ;
struct TYPE_7__ {scalar_t__ tuner_type; } ;
struct TYPE_6__ {int dev; } ;
 int EM2820_R08_GPIO_CTRL ;
 scalar_t__ EM28XX_AMUX_UNUSED ;
 int EM28XX_ANALOG_MODE ;
 scalar_t__ EM28XX_BOARD_NOT_VALIDATED ;
 scalar_t__ EM28XX_NOSENSOR ;
 TYPE_4__* INPUT (int) ;
 int MAX_EM28XX_INPUT ;
 int TVEEPROM_AUDPROC_MSP ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int) ;
 TYPE_3__* em28xx_boards ;
 int em28xx_detect_sensor (struct em28xx*) ;
 int em28xx_gpio_set (struct em28xx*,int ) ;
 int em28xx_hint_board (struct em28xx*) ;
 int em28xx_pre_card_setup (struct em28xx*) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_set_model (struct em28xx*) ;
 int em28xx_write_reg (struct em28xx*,int,int) ;
 int kfree (int *) ;
 int request_module (char*) ;
 scalar_t__ tuner ;
 int tveeprom_hauppauge_analog (struct tveeprom*,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void em28xx_card_setup(struct em28xx *dev)
{
 int i, j, idx;
 bool duplicate_entry;





 if (dev->is_webcam) {
  em28xx_detect_sensor(dev);
  if (dev->em28xx_sensor == EM28XX_NOSENSOR)

   dev->is_webcam = 0;
 }

 switch (dev->model) {
 case 142:
 case 136:
 case 141:
  if (em28xx_hint_board(dev) < 0) {
   dev_err(&dev->intf->dev, "Board not discovered\n");
  } else {
   em28xx_set_model(dev);
   em28xx_pre_card_setup(dev);
  }
  break;
 default:
  em28xx_set_model(dev);
 }

 dev_info(&dev->intf->dev, "Identified as %s (card=%d)\n",
   dev->board.name, dev->model);

 dev->tuner_type = em28xx_boards[dev->model].tuner_type;


 switch (dev->model) {
 case 138:
 case 135:
 case 134:
 case 130:
 case 129:
 case 128:
 case 139:
 case 140:
 {
  struct tveeprom tv;

  if (!dev->eedata)
   break;





  tveeprom_hauppauge_analog(&tv, dev->eedata);

  dev->tuner_type = tv.tuner_type;

  if (tv.audio_processor == TVEEPROM_AUDPROC_MSP) {
   dev->i2s_speed = 2048000;
   dev->has_msp34xx = 1;
  }
  break;
 }
 case 132:
  em28xx_write_reg(dev, 0x0d, 0x42);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfd);
  usleep_range(10000, 11000);
  break;
 case 137:

  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xf9);
  break;
 case 136:
 case 141:
 case 133:
  if (!em28xx_hint_board(dev))
   em28xx_set_model(dev);







  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, EM28XX_ANALOG_MODE);
  break;
 case 131:
  if (!em28xx_hint_board(dev))
   em28xx_set_model(dev);







  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, EM28XX_ANALOG_MODE);
  break;
 }

 if (dev->board.valid == EM28XX_BOARD_NOT_VALIDATED) {
  dev_err(&dev->intf->dev,
   "\n\n"
   "The support for this board weren't valid yet.\n"
   "Please send a report of having this working\n"
   "not to V4L mailing list (and/or to other addresses)\n\n");
 }


 kfree(dev->eedata);
 dev->eedata = ((void*)0);


 if (tuner >= 0)
  dev->tuner_type = tuner;






 idx = 0;
 for (i = 0; i < MAX_EM28XX_INPUT; i++) {
  if (!INPUT(i)->type)
   continue;


  duplicate_entry = 0;
  for (j = 0; j < idx; j++) {
   if (INPUT(i)->amux == dev->amux_map[j]) {
    duplicate_entry = 1;
    break;
   }
  }
  if (duplicate_entry)
   continue;

  dev->amux_map[idx++] = INPUT(i)->amux;
 }
 for (; idx < MAX_EM28XX_INPUT; idx++)
  dev->amux_map[idx] = EM28XX_AMUX_UNUSED;
}
