
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int GPIO_NAND_RB ;
 int dsb () ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int cmx270_device_ready(struct nand_chip *this)
{
 dsb();

 return (gpio_get_value(GPIO_NAND_RB));
}
