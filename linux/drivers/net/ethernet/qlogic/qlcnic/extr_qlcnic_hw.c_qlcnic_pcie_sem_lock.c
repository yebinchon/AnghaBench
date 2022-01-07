
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {int portnum; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int PCIE_SEM_LOCK (int) ;
 scalar_t__ QLCNIC_PCIE_REG (int ) ;
 int QLCNIC_PCIE_SEM_TIMEOUT ;
 int QLCRD32 (struct qlcnic_adapter*,scalar_t__,int*) ;
 int QLCWR32 (struct qlcnic_adapter*,scalar_t__,int ) ;
 int dev_err (int *,char*,int,...) ;
 int udelay (int) ;

int
qlcnic_pcie_sem_lock(struct qlcnic_adapter *adapter, int sem, u32 id_reg)
{
 int timeout = 0, err = 0, done = 0;

 while (!done) {
  done = QLCRD32(adapter, QLCNIC_PCIE_REG(PCIE_SEM_LOCK(sem)),
          &err);
  if (done == 1)
   break;
  if (++timeout >= QLCNIC_PCIE_SEM_TIMEOUT) {
   if (id_reg) {
    done = QLCRD32(adapter, id_reg, &err);
    if (done != -1)
     dev_err(&adapter->pdev->dev,
      "Failed to acquire sem=%d lock held by=%d\n",
      sem, done);
    else
     dev_err(&adapter->pdev->dev,
      "Failed to acquire sem=%d lock",
      sem);
   } else {
    dev_err(&adapter->pdev->dev,
     "Failed to acquire sem=%d lock", sem);
   }
   return -EIO;
  }
  udelay(1200);
 }

 if (id_reg)
  QLCWR32(adapter, id_reg, adapter->portnum);

 return 0;
}
