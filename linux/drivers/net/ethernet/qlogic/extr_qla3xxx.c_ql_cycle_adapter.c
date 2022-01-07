
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int ndev; } ;


 int dev_close (int ) ;
 int netdev_err (int ,char*) ;
 scalar_t__ ql_adapter_down (struct ql3_adapter*,int) ;
 scalar_t__ ql_adapter_up (struct ql3_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int ql_cycle_adapter(struct ql3_adapter *qdev, int reset)
{
 if (ql_adapter_down(qdev, reset) || ql_adapter_up(qdev)) {
  netdev_err(qdev->ndev,
      "Driver up/down cycle failed, closing device\n");
  rtnl_lock();
  dev_close(qdev->ndev);
  rtnl_unlock();
  return -1;
 }
 return 0;
}
