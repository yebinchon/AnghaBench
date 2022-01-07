
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct denali_controller {int nbanks; } ;


 int U32_MAX ;
 int denali_clear_irq (struct denali_controller*,int,int ) ;

__attribute__((used)) static void denali_clear_irq_all(struct denali_controller *denali)
{
 int i;

 for (i = 0; i < denali->nbanks; i++)
  denali_clear_irq(denali, i, U32_MAX);
}
