
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;


 int DiseqcSendByte (struct budget*,int) ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_GPIO_OUTLO ;
 int dprintk (int,char*,struct budget*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int SendDiSEqCMsg (struct budget *budget, int len, u8 *msg, unsigned long burst)
{
 struct saa7146_dev *dev=budget->dev;
 int i;

 dprintk(2, "budget: %p\n", budget);

 saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTLO);
 mdelay(16);

 for (i=0; i<len; i++)
  DiseqcSendByte(budget, msg[i]);

 mdelay(16);

 if (burst!=-1) {
  if (burst)
   DiseqcSendByte(budget, 0xff);
  else {
   saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTHI);
   mdelay(12);
   udelay(500);
   saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTLO);
  }
  msleep(20);
 }

 return 0;
}
