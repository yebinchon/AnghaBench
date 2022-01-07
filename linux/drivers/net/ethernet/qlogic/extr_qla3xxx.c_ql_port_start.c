
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int mac_index; int ndev; } ;


 int QL_PHY_GIO_SEM_MASK ;
 int QL_RESOURCE_BITS_BASE_CODE ;
 int netdev_err (int ,char*) ;
 scalar_t__ ql_is_fiber (struct ql3_adapter*) ;
 int ql_petbi_init (struct ql3_adapter*) ;
 int ql_phy_init_ex (struct ql3_adapter*) ;
 scalar_t__ ql_sem_spinlock (struct ql3_adapter*,int ,int) ;
 int ql_sem_unlock (struct ql3_adapter*,int ) ;

__attribute__((used)) static int ql_port_start(struct ql3_adapter *qdev)
{
 if (ql_sem_spinlock(qdev, QL_PHY_GIO_SEM_MASK,
  (QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
    2) << 7)) {
  netdev_err(qdev->ndev, "Could not get hw lock for GIO\n");
  return -1;
 }

 if (ql_is_fiber(qdev)) {
  ql_petbi_init(qdev);
 } else {

  ql_phy_init_ex(qdev);
 }

 ql_sem_unlock(qdev, QL_PHY_GIO_SEM_MASK);
 return 0;
}
