
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum tda18271_mode { ____Placeholder_tda18271_mode } tda18271_mode ;


 int EINVAL ;


 int saa7134_set_gpio (struct saa7134_dev*,int,int) ;

__attribute__((used)) static inline int saa7134_tda18271_hvr11x0_toggle_agc(struct saa7134_dev *dev,
            enum tda18271_mode mode)
{

 switch (mode) {
 case 129:
  saa7134_set_gpio(dev, 26, 0);
  break;
 case 128:
  saa7134_set_gpio(dev, 26, 1);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
