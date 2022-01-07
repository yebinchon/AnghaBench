
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pdev; } ;


 int EEPROM_STAT_ADDR ;
 int pci_write_vpd (int ,int ,int,unsigned int*) ;

int t4_seeprom_wp(struct adapter *adapter, bool enable)
{
 unsigned int v = enable ? 0xc : 0;
 int ret = pci_write_vpd(adapter->pdev, EEPROM_STAT_ADDR, 4, &v);
 return ret < 0 ? ret : 0;
}
