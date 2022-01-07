
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_ceqs {int num_ceqs; int * ceq; } ;


 int remove_eq (int *) ;

void hinic_ceqs_free(struct hinic_ceqs *ceqs)
{
 int q_id;

 for (q_id = 0; q_id < ceqs->num_ceqs; q_id++)
  remove_eq(&ceqs->ceq[q_id]);
}
