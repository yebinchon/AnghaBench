
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic3 {int irq_base; } ;


 int ASIC3_GPIO_A_BASE ;
 int ASIC3_GPIO_B_BASE ;

__attribute__((used)) static inline int asic3_irq_to_bank(struct asic3 *asic, int irq)
{
 int n;

 n = (irq - asic->irq_base) >> 4;

 return (n * (ASIC3_GPIO_B_BASE - ASIC3_GPIO_A_BASE));
}
