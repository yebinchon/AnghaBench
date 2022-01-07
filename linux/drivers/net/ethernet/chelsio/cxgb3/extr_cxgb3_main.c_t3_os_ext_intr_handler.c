
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int slow_intr_mask; int work_lock; int ext_intr_handler_task; } ;


 int A_PL_INT_ENABLE0 ;
 int F_T3DBG ;
 int cxgb3_wq ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;

void t3_os_ext_intr_handler(struct adapter *adapter)
{






 spin_lock(&adapter->work_lock);
 if (adapter->slow_intr_mask) {
  adapter->slow_intr_mask &= ~F_T3DBG;
  t3_write_reg(adapter, A_PL_INT_ENABLE0,
        adapter->slow_intr_mask);
  queue_work(cxgb3_wq, &adapter->ext_intr_handler_task);
 }
 spin_unlock(&adapter->work_lock);
}
