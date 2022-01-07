
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7134_dev {int dummy; } ;


 int EINVAL ;
 int SAA7134_MISC_VGATE_MSB ;
 int SAA7134_VGATE_START ;
 int SAA7134_VGATE_STOP ;
 int SAA7134_VIDEO_PORT_CTRL3 ;
 int SAA7134_VIDEO_PORT_CTRL6 ;
 int saa7134_set_gpio (struct saa7134_dev*,int,int) ;
 int saa_andorb (int ,int,int) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static int saa7134_tda8290_827x_callback(struct saa7134_dev *dev,
      int command, int arg)
{
 u8 sync_control;

 switch (command) {
 case 0:
  saa7134_set_gpio(dev, 22, arg) ;
  break;
 case 1:
  saa_andorb(SAA7134_VIDEO_PORT_CTRL3, 0x80, 0x80);
  saa_andorb(SAA7134_VIDEO_PORT_CTRL6, 0x0f, 0x03);
  if (arg == 1)
   sync_control = 11;
  else
   sync_control = 17;
  saa_writeb(SAA7134_VGATE_START, sync_control);
  saa_writeb(SAA7134_VGATE_STOP, sync_control + 1);
  saa_andorb(SAA7134_MISC_VGATE_MSB, 0x03, 0x00);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
