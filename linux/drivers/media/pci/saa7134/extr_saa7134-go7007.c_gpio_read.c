
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct saa7134_dev {int dummy; } ;


 int GPIO_COMMAND_ADDR ;
 int GPIO_COMMAND_IDLE ;
 int GPIO_COMMAND_READ ;
 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_GPIO_GPSTATUS2 ;
 int saa_clearb (int ,int ) ;
 int saa_readb (int ) ;
 int saa_setb (int ,int ) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static int gpio_read(struct saa7134_dev *dev, u8 addr, u16 *data)
{
 saa_writeb(SAA7134_GPIO_GPMODE0, 0xff);


 saa_writeb(SAA7134_GPIO_GPSTATUS0, addr);
 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_ADDR);
 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);

 saa_writeb(SAA7134_GPIO_GPMODE0, 0x00);


 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_READ);
 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 *data = saa_readb(SAA7134_GPIO_GPSTATUS0);
 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);


 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_READ);
 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 *data |= saa_readb(SAA7134_GPIO_GPSTATUS0) << 8;
 saa_writeb(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);

 return 0;
}
