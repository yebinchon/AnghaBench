
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int fw_work; int state; } ;


 int __NX_RESETTING ;
 int cancel_delayed_work_sync (int *) ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
netxen_cancel_fw_work(struct netxen_adapter *adapter)
{
 while (test_and_set_bit(__NX_RESETTING, &adapter->state))
  msleep(10);

 cancel_delayed_work_sync(&adapter->fw_work);
}
