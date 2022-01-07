
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int dummy; } ;


 int EIO ;
 int INTR__INT_ACT ;
 int denali_reset_irq (struct denali_controller*) ;
 int denali_wait_for_irq (struct denali_controller*,int) ;

__attribute__((used)) static int denali_exec_waitrdy(struct denali_controller *denali)
{
 u32 irq_stat;


 irq_stat = denali_wait_for_irq(denali, INTR__INT_ACT);


 denali_reset_irq(denali);

 return irq_stat & INTR__INT_ACT ? 0 : -EIO;
}
