
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tuner_gpio; } ;
struct em28xx {int model; int i2s_speed; TYPE_1__ board; } ;





 int EM2820_R08_GPIO_CTRL ;
 int EM2880_R04_GPO ;

 int EM28XX_ANALOG_MODE ;
 int EM28XX_R06_I2C_CLK ;
 int EM28XX_R0F_XCLK ;
 int EM28XX_SUSPEND ;
 int em28xx_gpio_set (struct em28xx*,int ) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_set_xclk_i2c_speed (struct em28xx*) ;
 int em28xx_wait_until_ac97_features_equals (struct em28xx*,int) ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;
 int em28xx_write_regs (struct em28xx*,int,char*,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void em28xx_pre_card_setup(struct em28xx *dev)
{




 em28xx_set_xclk_i2c_speed(dev);


 switch (dev->model) {
 case 133:

  dev->i2s_speed = 2048000;
  break;
 case 134:
 case 129:
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0x6d);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0x7d);
  usleep_range(10000, 11000);
  break;
 case 132:




  em28xx_write_reg(dev, EM2880_R04_GPO, 0x00);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2880_R04_GPO, 0x01);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfd);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfc);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xdc);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfc);
  msleep(70);
  break;
 case 130:




  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xde);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  msleep(70);
  break;
 case 131:




  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xde);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  msleep(70);
  break;
 case 140:
 case 138:

  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfd);
  break;

 case 128:
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xff);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2880_R04_GPO, 0x00);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2880_R04_GPO, 0x08);
  usleep_range(10000, 11000);
  break;

 case 136:
  em28xx_write_regs(dev, EM28XX_R0F_XCLK, "\x07", 1);
  em28xx_write_regs(dev, EM28XX_R06_I2C_CLK, "\x40", 1);
  em28xx_write_regs(dev, 0x0d, "\x42", 1);
  em28xx_write_regs(dev, 0x08, "\xfd", 1);
  usleep_range(10000, 11000);
  em28xx_write_regs(dev, 0x08, "\xff", 1);
  usleep_range(10000, 11000);
  em28xx_write_regs(dev, 0x08, "\x7f", 1);
  usleep_range(10000, 11000);
  em28xx_write_regs(dev, 0x08, "\x6b", 1);

  break;
 case 137:
  em28xx_write_regs(dev, 0x08, "\xf8", 1);
  break;

 case 139:
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xff);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xf7);
  usleep_range(10000, 11000);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfe);
  msleep(70);
  em28xx_write_reg(dev, EM2820_R08_GPIO_CTRL, 0xfd);
  msleep(70);
  break;

 case 135:




  em28xx_wait_until_ac97_features_equals(dev, 0x6a90);
  break;
 }

 em28xx_gpio_set(dev, dev->board.tuner_gpio);
 em28xx_set_mode(dev, EM28XX_ANALOG_MODE);


 em28xx_set_mode(dev, EM28XX_SUSPEND);
}
