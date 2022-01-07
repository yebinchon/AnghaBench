
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_hw {int update_zone_task; } ;
struct fjes_adapter {int control_wq; struct fjes_hw hw; } ;


 int queue_work (int ,int *) ;
 int work_pending (int *) ;

__attribute__((used)) static void fjes_update_zone_irq(struct fjes_adapter *adapter,
     int src_epid)
{
 struct fjes_hw *hw = &adapter->hw;

 if (!work_pending(&hw->update_zone_task))
  queue_work(adapter->control_wq, &hw->update_zone_task);
}
