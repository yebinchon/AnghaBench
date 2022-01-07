
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_eq {scalar_t__ type; } ;


 scalar_t__ HINIC_AEQ ;
 scalar_t__ HINIC_CEQ ;
 int aeq_irq_handler (struct hinic_eq*) ;
 int ceq_irq_handler (struct hinic_eq*) ;
 int eq_update_ci (struct hinic_eq*) ;

__attribute__((used)) static void eq_irq_handler(void *data)
{
 struct hinic_eq *eq = data;

 if (eq->type == HINIC_AEQ)
  aeq_irq_handler(eq);
 else if (eq->type == HINIC_CEQ)
  ceq_irq_handler(eq);

 eq_update_ci(eq);
}
