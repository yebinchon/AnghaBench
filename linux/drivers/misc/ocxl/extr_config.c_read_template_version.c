
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ocxl_fn_config {int dummy; } ;


 void* EXTRACT_BITS (int ,int,int) ;
 int OCXL_DVSEC_TEMPL_VERSION ;
 int read_afu_info (struct pci_dev*,struct ocxl_fn_config*,int ,int *) ;

__attribute__((used)) static int read_template_version(struct pci_dev *dev, struct ocxl_fn_config *fn,
  u16 *len, u16 *version)
{
 u32 val32;
 u8 major, minor;
 int rc;

 rc = read_afu_info(dev, fn, OCXL_DVSEC_TEMPL_VERSION, &val32);
 if (rc)
  return rc;

 *len = EXTRACT_BITS(val32, 16, 31);
 major = EXTRACT_BITS(val32, 8, 15);
 minor = EXTRACT_BITS(val32, 0, 7);
 *version = (major << 8) + minor;
 return 0;
}
