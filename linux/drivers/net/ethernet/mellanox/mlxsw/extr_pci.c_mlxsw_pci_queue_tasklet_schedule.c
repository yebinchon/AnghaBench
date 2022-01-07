
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int tasklet; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void mlxsw_pci_queue_tasklet_schedule(struct mlxsw_pci_queue *q)
{
 tasklet_schedule(&q->tasklet);
}
