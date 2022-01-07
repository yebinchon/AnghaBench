
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_eq {int dummy; } ;


 int eq_irq_handler (struct hinic_eq*) ;

__attribute__((used)) static void ceq_tasklet(unsigned long ceq_data)
{
 struct hinic_eq *ceq = (struct hinic_eq *)ceq_data;

 eq_irq_handler(ceq);
}
