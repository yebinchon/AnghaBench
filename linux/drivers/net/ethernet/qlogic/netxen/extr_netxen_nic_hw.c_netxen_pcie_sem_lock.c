
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netxen_adapter {int portnum; } ;


 int EIO ;
 int NETXEN_PCIE_REG (int ) ;
 int NETXEN_PCIE_SEM_TIMEOUT ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,scalar_t__,int ) ;
 int PCIE_SEM_LOCK (int) ;
 int msleep (int) ;

int
netxen_pcie_sem_lock(struct netxen_adapter *adapter, int sem, u32 id_reg)
{
 int done = 0, timeout = 0;

 while (!done) {
  done = NXRD32(adapter, NETXEN_PCIE_REG(PCIE_SEM_LOCK(sem)));
  if (done == 1)
   break;
  if (++timeout >= NETXEN_PCIE_SEM_TIMEOUT)
   return -EIO;
  msleep(1);
 }

 if (id_reg)
  NXWR32(adapter, id_reg, adapter->portnum);

 return 0;
}
