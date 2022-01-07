
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pdev; int pf; } ;


 int EEPROMPFSIZE ;
 int pci_read_vpd (int ,int,int ,void*) ;
 int t4_eeprom_ptov (int ,int ,int ) ;

__attribute__((used)) static int cudbg_read_vpd_reg(struct adapter *padap, u32 addr, u32 len,
         void *dest)
{
 int vaddr, rc;

 vaddr = t4_eeprom_ptov(addr, padap->pf, EEPROMPFSIZE);
 if (vaddr < 0)
  return vaddr;

 rc = pci_read_vpd(padap->pdev, vaddr, len, dest);
 if (rc < 0)
  return rc;

 return 0;
}
