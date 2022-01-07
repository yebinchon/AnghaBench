
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tuner_sif_gpio; TYPE_1__* tuner_gpio; int name; } ;
struct cx231xx {scalar_t__ model; TYPE_2__ board; int dev; } ;
struct TYPE_3__ {scalar_t__ bit; } ;


 int CX231XX_ANALOG_MODE ;
 scalar_t__ CX231XX_BOARD_ASTROMETA_T2HYBRID ;
 int cx231xx_set_gpio_direction (struct cx231xx*,scalar_t__,int) ;
 int cx231xx_set_gpio_value (struct cx231xx*,int,int) ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int dev_info (int ,char*,int ,scalar_t__) ;

void cx231xx_pre_card_setup(struct cx231xx *dev)
{
 dev_info(dev->dev, "Identified as %s (card=%d)\n",
  dev->board.name, dev->model);

 if (CX231XX_BOARD_ASTROMETA_T2HYBRID == dev->model) {

  cx231xx_set_gpio_value(dev, 0x03, 0x01);
 }


 if (dev->board.tuner_gpio) {
  cx231xx_set_gpio_direction(dev, dev->board.tuner_gpio->bit, 1);
  cx231xx_set_gpio_value(dev, dev->board.tuner_gpio->bit, 1);
 }
 if (dev->board.tuner_sif_gpio >= 0)
  cx231xx_set_gpio_direction(dev, dev->board.tuner_sif_gpio, 1);




 cx231xx_set_mode(dev, CX231XX_ANALOG_MODE);




}
