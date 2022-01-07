
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct be_adapter {int pdev; scalar_t__ csr; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int POST_STAGE_MASK ;
 scalar_t__ SLIPORT_SEMAPHORE_OFFSET_BEx ;
 int SLIPORT_SEMAPHORE_OFFSET_SH ;
 int ioread32 (scalar_t__) ;
 int pci_read_config_dword (int ,int ,int*) ;

u16 be_POST_stage_get(struct be_adapter *adapter)
{
 u32 sem;

 if (BEx_chip(adapter))
  sem = ioread32(adapter->csr + SLIPORT_SEMAPHORE_OFFSET_BEx);
 else
  pci_read_config_dword(adapter->pdev,
          SLIPORT_SEMAPHORE_OFFSET_SH, &sem);

 return sem & POST_STAGE_MASK;
}
