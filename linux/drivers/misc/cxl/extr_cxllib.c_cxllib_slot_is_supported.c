
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int CPU_FTR_HVMODE ;
 int cpu_has_feature (int ) ;
 int cxl_calc_capp_routing (struct pci_dev*,int *,int *,int *) ;
 int cxl_is_power9 () ;
 scalar_t__ cxl_slot_is_switched (struct pci_dev*) ;

bool cxllib_slot_is_supported(struct pci_dev *dev, unsigned long flags)
{
 int rc;
 u32 phb_index;
 u64 chip_id, capp_unit_id;


 if (flags)
  return 0;

 if (!cpu_has_feature(CPU_FTR_HVMODE))
  return 0;

 if (!cxl_is_power9())
  return 0;

 if (cxl_slot_is_switched(dev))
  return 0;


 rc = cxl_calc_capp_routing(dev, &chip_id, &phb_index, &capp_unit_id);
 if (rc)
  return 0;

 return 1;
}
