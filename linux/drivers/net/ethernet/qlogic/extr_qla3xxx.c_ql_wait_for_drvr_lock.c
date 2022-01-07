
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int mac_index; int ndev; } ;


 int KERN_DEBUG ;
 int QL_DRVR_SEM_MASK ;
 int QL_RESOURCE_BITS_BASE_CODE ;
 int netdev_err (int ,char*) ;
 int netdev_printk (int ,int ,char*) ;
 scalar_t__ ql_sem_lock (struct ql3_adapter*,int ,int) ;
 int ssleep (int) ;

__attribute__((used)) static int ql_wait_for_drvr_lock(struct ql3_adapter *qdev)
{
 int i = 0;

 do {
  if (ql_sem_lock(qdev,
    QL_DRVR_SEM_MASK,
    (QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index)
     * 2) << 1)) {
   netdev_printk(KERN_DEBUG, qdev->ndev,
          "driver lock acquired\n");
   return 1;
  }
  ssleep(1);
 } while (++i < 10);

 netdev_err(qdev->ndev, "Timed out waiting for driver lock...\n");
 return 0;
}
