
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_aeqs {int num_aeqs; int workq; int * aeq; } ;


 int destroy_workqueue (int ) ;
 int remove_eq (int *) ;

void hinic_aeqs_free(struct hinic_aeqs *aeqs)
{
 int q_id;

 for (q_id = 0; q_id < aeqs->num_aeqs ; q_id++)
  remove_eq(&aeqs->aeq[q_id]);

 destroy_workqueue(aeqs->workq);
}
