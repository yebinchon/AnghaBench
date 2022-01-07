
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_GPIO_OUTLO ;



 int dprintk (int,char*,struct budget*) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;

__attribute__((used)) static int SetVoltage_Activy(struct budget *budget,
        enum fe_sec_voltage voltage)
{
 struct saa7146_dev *dev=budget->dev;

 dprintk(2, "budget: %p\n", budget);

 switch (voltage) {
  case 130:
   saa7146_setgpio(dev, 1, SAA7146_GPIO_OUTHI);
   saa7146_setgpio(dev, 2, SAA7146_GPIO_OUTLO);
   break;
  case 129:
   saa7146_setgpio(dev, 1, SAA7146_GPIO_OUTHI);
   saa7146_setgpio(dev, 2, SAA7146_GPIO_OUTHI);
   break;
  case 128:
   saa7146_setgpio(dev, 1, SAA7146_GPIO_OUTLO);
   break;
  default:
   return -EINVAL;
 }

 return 0;
}
