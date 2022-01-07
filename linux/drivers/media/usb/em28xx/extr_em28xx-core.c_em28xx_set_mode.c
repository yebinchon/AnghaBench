
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dvb_gpio; int suspend_gpio; } ;
struct em28xx {int mode; int ctl_input; TYPE_1__ board; } ;
typedef enum em28xx_mode { ____Placeholder_em28xx_mode } em28xx_mode ;
struct TYPE_4__ {int gpio; } ;


 scalar_t__ EM28XX_DIGITAL_MODE ;
 int EM28XX_SUSPEND ;
 TYPE_2__* INPUT (int ) ;
 int em28xx_gpio_set (struct em28xx*,int ) ;

int em28xx_set_mode(struct em28xx *dev, enum em28xx_mode set_mode)
{
 if (dev->mode == set_mode)
  return 0;

 if (set_mode == EM28XX_SUSPEND) {
  dev->mode = set_mode;



  return em28xx_gpio_set(dev, dev->board.suspend_gpio);
 }

 dev->mode = set_mode;

 if (dev->mode == EM28XX_DIGITAL_MODE)
  return em28xx_gpio_set(dev, dev->board.dvb_gpio);
 else
  return em28xx_gpio_set(dev, INPUT(dev->ctl_input)->gpio);
}
