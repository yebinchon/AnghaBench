
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int board; } ;


 int EINVAL ;





 int SAA7134_GPIO_GPSTATUS0 ;

 int msleep (int) ;
 int saa7134_set_gpio (struct saa7134_dev*,int,int) ;
 int saa_andorl (int,int,int) ;

__attribute__((used)) static int saa7134_xc2028_callback(struct saa7134_dev *dev,
       int command, int arg)
{
 switch (command) {
 case 128:
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00008000, 0x00000000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00008000, 0x00008000);
  switch (dev->board) {
  case 131:
  case 130:
   saa7134_set_gpio(dev, 23, 0);
   msleep(10);
   saa7134_set_gpio(dev, 23, 1);
  break;
  case 133:
   saa7134_set_gpio(dev, 21, 0);
   msleep(10);
   saa7134_set_gpio(dev, 21, 1);
  break;
  case 132:
   saa7134_set_gpio(dev, 18, 0);
   msleep(10);
   saa7134_set_gpio(dev, 18, 1);
  break;
  case 129:
   saa7134_set_gpio(dev, 20, 0);
   msleep(10);
   saa7134_set_gpio(dev, 20, 1);
  break;
  }
  return 0;
 }
 return -EINVAL;
}
