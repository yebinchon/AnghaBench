
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;


 int NETXEN_PCIE_REG (int ) ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int PCIE_SEM_UNLOCK (int) ;

void
netxen_pcie_sem_unlock(struct netxen_adapter *adapter, int sem)
{
 NXRD32(adapter, NETXEN_PCIE_REG(PCIE_SEM_UNLOCK(sem)));
}
