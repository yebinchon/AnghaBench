
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct qlcnic_adapter {int fw_work; int qlcnic_wq; int state; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int __QLCNIC_AER ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int) ;
 scalar_t__ test_bit (int ,int *) ;

void qlcnic_schedule_work(struct qlcnic_adapter *adapter,
     work_func_t func, int delay)
{
 if (test_bit(__QLCNIC_AER, &adapter->state))
  return;

 INIT_DELAYED_WORK(&adapter->fw_work, func);
 queue_delayed_work(adapter->qlcnic_wq, &adapter->fw_work,
      round_jiffies_relative(delay));
}
