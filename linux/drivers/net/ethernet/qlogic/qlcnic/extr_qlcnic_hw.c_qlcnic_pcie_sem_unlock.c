
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int PCIE_SEM_UNLOCK (int) ;
 int QLCNIC_PCIE_REG (int ) ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;

void
qlcnic_pcie_sem_unlock(struct qlcnic_adapter *adapter, int sem)
{
 int err = 0;

 QLCRD32(adapter, QLCNIC_PCIE_REG(PCIE_SEM_UNLOCK(sem)), &err);
}
