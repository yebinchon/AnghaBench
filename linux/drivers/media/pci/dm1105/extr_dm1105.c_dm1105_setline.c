
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dm1105_dev {int dummy; } ;


 int dm1105_gpio_clear (struct dm1105_dev*,int ) ;
 int dm1105_gpio_enable (struct dm1105_dev*,int ,int) ;

__attribute__((used)) static void dm1105_setline(struct dm1105_dev *dev, u32 line, int state)
{
 if (state)
  dm1105_gpio_enable(dev, line, 0);
 else {
  dm1105_gpio_enable(dev, line, 1);
  dm1105_gpio_clear(dev, line);
 }
}
