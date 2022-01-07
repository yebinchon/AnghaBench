
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pdev; int pf; } ;


 int EEPROMPFSIZE ;
 int pci_write_vpd (int ,int,int,int *) ;
 int t4_eeprom_ptov (unsigned int,int ,int ) ;

__attribute__((used)) static int eeprom_wr_phys(struct adapter *adap, unsigned int phys_addr, u32 v)
{
 int vaddr = t4_eeprom_ptov(phys_addr, adap->pf, EEPROMPFSIZE);

 if (vaddr >= 0)
  vaddr = pci_write_vpd(adap->pdev, vaddr, sizeof(u32), &v);
 return vaddr < 0 ? vaddr : 0;
}
