
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int cx23885_gpio_clear (struct cx23885_dev*,int ) ;
 int cx23885_gpio_enable (struct cx23885_dev*,int ,int) ;
 int cx23885_gpio_set (struct cx23885_dev*,int ) ;

__attribute__((used)) static void f300_set_line(struct cx23885_dev *dev, u32 line, u8 lvl)
{
 cx23885_gpio_enable(dev, line, 1);
 if (lvl == 1)
  cx23885_gpio_set(dev, line);
 else
  cx23885_gpio_clear(dev, line);
}
