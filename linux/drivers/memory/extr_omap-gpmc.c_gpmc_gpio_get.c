
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int GPMC_STATUS ;
 int gpmc_read_reg (int ) ;

__attribute__((used)) static int gpmc_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 u32 reg;

 offset += 8;

 reg = gpmc_read_reg(GPMC_STATUS) & BIT(offset);

 return !!reg;
}
