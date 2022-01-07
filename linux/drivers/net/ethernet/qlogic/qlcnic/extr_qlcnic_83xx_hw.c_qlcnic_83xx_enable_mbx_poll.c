
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int mbx_poll_work; int qlcnic_wq; int state; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int __QLCNIC_MBX_POLL_ENABLE ;
 int qlcnic_83xx_mbx_poll_work ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void qlcnic_83xx_enable_mbx_poll(struct qlcnic_adapter *adapter)
{
 if (test_and_set_bit(__QLCNIC_MBX_POLL_ENABLE, &adapter->state))
  return;

 INIT_DELAYED_WORK(&adapter->mbx_poll_work, qlcnic_83xx_mbx_poll_work);
 queue_delayed_work(adapter->qlcnic_wq, &adapter->mbx_poll_work, 0);
}
