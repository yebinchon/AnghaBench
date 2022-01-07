
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 scalar_t__ get_phb_indications (struct pci_dev*,int*,int*,int*) ;

int cxl_get_xsl9_dsnctl(struct pci_dev *dev, u64 capp_unit_id, u64 *reg)
{
 u64 xsl_dsnctl;
 u64 capiind, asnind, nbwind;






 if (get_phb_indications(dev, &capiind, &asnind, &nbwind))
  return -ENODEV;





 xsl_dsnctl = (capiind << (63-15));
 xsl_dsnctl |= (capp_unit_id << (63-15));


 xsl_dsnctl |= ((u64)0x09 << (63-28));
 xsl_dsnctl |= (nbwind << (63-55));






 xsl_dsnctl |= asnind;

 *reg = xsl_dsnctl;
 return 0;
}
