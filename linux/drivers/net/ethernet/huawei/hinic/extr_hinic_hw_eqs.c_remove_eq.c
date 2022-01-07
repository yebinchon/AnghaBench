
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int vector; } ;
struct hinic_eq_work {int work; } ;
struct hinic_eq {scalar_t__ type; int ceq_tasklet; struct hinic_eq_work aeq_work; struct msix_entry msix_entry; } ;


 scalar_t__ HINIC_AEQ ;
 scalar_t__ HINIC_CEQ ;
 int cancel_work_sync (int *) ;
 int free_eq_pages (struct hinic_eq*) ;
 int free_irq (int ,struct hinic_eq*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void remove_eq(struct hinic_eq *eq)
{
 struct msix_entry *entry = &eq->msix_entry;

 free_irq(entry->vector, eq);

 if (eq->type == HINIC_AEQ) {
  struct hinic_eq_work *aeq_work = &eq->aeq_work;

  cancel_work_sync(&aeq_work->work);
 } else if (eq->type == HINIC_CEQ) {
  tasklet_kill(&eq->ceq_tasklet);
 }

 free_eq_pages(eq);
}
