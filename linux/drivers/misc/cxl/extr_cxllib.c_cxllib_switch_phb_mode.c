
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef enum cxllib_mode { ____Placeholder_cxllib_mode } cxllib_mode ;


 int CPU_FTR_HVMODE ;

 unsigned long CXL_MODE_DMA_TVT1 ;

 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int OPAL_PHB_CAPI_MODE_DMA_TVT1 ;
 int OPAL_PHB_CAPI_MODE_SNOOP_OFF ;
 int OPAL_PHB_CAPI_MODE_SNOOP_ON ;
 int cpu_has_feature (int ) ;
 int pnv_phb_to_cxl_mode (struct pci_dev*,int ) ;

int cxllib_switch_phb_mode(struct pci_dev *dev, enum cxllib_mode mode,
   unsigned long flags)
{
 int rc = 0;

 if (!cpu_has_feature(CPU_FTR_HVMODE))
  return -EINVAL;

 switch (mode) {
 case 128:
  rc = pnv_phb_to_cxl_mode(dev, OPAL_PHB_CAPI_MODE_SNOOP_OFF);
  if (rc)
   rc = -EBUSY;
  else
   rc = -EPERM;
  break;
 case 129:

  if (flags != CXL_MODE_DMA_TVT1)
   return -EINVAL;
  rc = pnv_phb_to_cxl_mode(dev, OPAL_PHB_CAPI_MODE_DMA_TVT1);
  if (rc)
   return rc;
  rc = pnv_phb_to_cxl_mode(dev, OPAL_PHB_CAPI_MODE_SNOOP_ON);
  break;
 default:
  rc = -EINVAL;
 }
 return rc;
}
