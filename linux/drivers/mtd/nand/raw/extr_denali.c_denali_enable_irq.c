
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct denali_controller {int nbanks; scalar_t__ reg; } ;


 scalar_t__ GLOBAL_INT_ENABLE ;
 int GLOBAL_INT_EN_FLAG ;
 scalar_t__ INTR_EN (int) ;
 int U32_MAX ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void denali_enable_irq(struct denali_controller *denali)
{
 int i;

 for (i = 0; i < denali->nbanks; i++)
  iowrite32(U32_MAX, denali->reg + INTR_EN(i));
 iowrite32(GLOBAL_INT_EN_FLAG, denali->reg + GLOBAL_INT_ENABLE);
}
