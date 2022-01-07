
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int SOLO_GPIO_DATA_OUT ;
 unsigned int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,unsigned int) ;

__attribute__((used)) static void solo_gpio_clear(struct solo_dev *solo_dev, unsigned int value)
{
 solo_reg_write(solo_dev, SOLO_GPIO_DATA_OUT,
         solo_reg_read(solo_dev, SOLO_GPIO_DATA_OUT) & ~value);
}
