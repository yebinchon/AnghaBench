
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct denali_controller {int nbanks; scalar_t__ reg; } ;


 scalar_t__ GLOBAL_INT_ENABLE ;
 scalar_t__ INTR_EN (int) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void denali_disable_irq(struct denali_controller *denali)
{
 int i;

 for (i = 0; i < denali->nbanks; i++)
  iowrite32(0, denali->reg + INTR_EN(i));
 iowrite32(0, denali->reg + GLOBAL_INT_ENABLE);
}
