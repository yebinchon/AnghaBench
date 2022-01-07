
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;
struct cxl_afu {int crs_num; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int cxl_pcie_cfg_record (int ,unsigned int) ;

__attribute__((used)) static inline int cxl_pcie_config_info(struct pci_bus *bus, unsigned int devfn,
           struct cxl_afu *afu, int *_record)
{
 int record;

 record = cxl_pcie_cfg_record(bus->number, devfn);
 if (record > afu->crs_num)
  return PCIBIOS_DEVICE_NOT_FOUND;

 *_record = record;
 return 0;
}
