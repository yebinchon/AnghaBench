
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum tda18271_mode { ____Placeholder_tda18271_mode } tda18271_mode ;


 int EINVAL ;
 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPSTATUS0 ;


 int msleep (int) ;
 int saa_writel (int,int) ;

__attribute__((used)) static inline int saa7134_kworld_sbtvd_toggle_agc(struct saa7134_dev *dev,
        enum tda18271_mode mode)
{

 switch (mode) {
 case 129:
  saa_writel(SAA7134_GPIO_GPMODE0 >> 2, 0x4000);
  saa_writel(SAA7134_GPIO_GPSTATUS0 >> 2, 0x4000);
  msleep(20);
  break;
 case 128:
  saa_writel(SAA7134_GPIO_GPMODE0 >> 2, 0x14000);
  saa_writel(SAA7134_GPIO_GPSTATUS0 >> 2, 0x14000);
  msleep(20);
  saa_writel(SAA7134_GPIO_GPMODE0 >> 2, 0x54000);
  saa_writel(SAA7134_GPIO_GPSTATUS0 >> 2, 0x54000);
  msleep(30);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
