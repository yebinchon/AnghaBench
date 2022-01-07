
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int tid_release_task_busy; int flags; int * tid_release_head; int db_drop_task; int db_full_task; int tid_release_task; } ;


 int CXGB4_FULL_INIT_DONE ;
 int cancel_work_sync (int *) ;
 int t4_free_sge_resources (struct adapter*) ;
 int t4_sge_stop (struct adapter*) ;

__attribute__((used)) static void cxgb_down(struct adapter *adapter)
{
 cancel_work_sync(&adapter->tid_release_task);
 cancel_work_sync(&adapter->db_full_task);
 cancel_work_sync(&adapter->db_drop_task);
 adapter->tid_release_task_busy = 0;
 adapter->tid_release_head = ((void*)0);

 t4_sge_stop(adapter);
 t4_free_sge_resources(adapter);

 adapter->flags &= ~CXGB4_FULL_INIT_DONE;
}
