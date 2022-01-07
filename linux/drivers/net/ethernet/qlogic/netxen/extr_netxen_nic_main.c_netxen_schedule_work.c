
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct netxen_adapter {int fw_work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void
netxen_schedule_work(struct netxen_adapter *adapter,
  work_func_t func, int delay)
{
 INIT_DELAYED_WORK(&adapter->fw_work, func);
 schedule_delayed_work(&adapter->fw_work, delay);
}
