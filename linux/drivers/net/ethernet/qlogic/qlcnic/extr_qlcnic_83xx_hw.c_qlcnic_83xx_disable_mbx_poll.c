
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int mbx_poll_work; int state; } ;


 int __QLCNIC_MBX_POLL_ENABLE ;
 int cancel_delayed_work_sync (int *) ;
 int test_and_clear_bit (int ,int *) ;

void qlcnic_83xx_disable_mbx_poll(struct qlcnic_adapter *adapter)
{
 if (!test_and_clear_bit(__QLCNIC_MBX_POLL_ENABLE, &adapter->state))
  return;
 cancel_delayed_work_sync(&adapter->mbx_poll_work);
}
