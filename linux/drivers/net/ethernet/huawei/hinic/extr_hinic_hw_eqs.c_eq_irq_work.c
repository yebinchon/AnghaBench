
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct hinic_eq_work {struct hinic_eq* data; } ;
struct hinic_eq {int dummy; } ;


 int eq_irq_handler (struct hinic_eq*) ;
 struct hinic_eq_work* work_to_aeq_work (struct work_struct*) ;

__attribute__((used)) static void eq_irq_work(struct work_struct *work)
{
 struct hinic_eq_work *aeq_work = work_to_aeq_work(work);
 struct hinic_eq *aeq;

 aeq = aeq_work->data;
 eq_irq_handler(aeq);
}
