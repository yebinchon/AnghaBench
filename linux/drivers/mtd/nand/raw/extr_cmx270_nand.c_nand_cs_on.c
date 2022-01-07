
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NAND_CS ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static inline void nand_cs_on(void)
{
 gpio_set_value(GPIO_NAND_CS, 0);
}
