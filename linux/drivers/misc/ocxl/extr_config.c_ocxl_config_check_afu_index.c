
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct ocxl_fn_config {scalar_t__ dvsec_afu_info_pos; } ;


 scalar_t__ OCXL_DVSEC_AFU_INFO_AFU_IDX ;
 int OCXL_TEMPL_LEN_1_0 ;
 int OCXL_TEMPL_LEN_1_1 ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_warn (int *,char*,int,...) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;
 int read_template_version (struct pci_dev*,struct ocxl_fn_config*,int*,int*) ;

int ocxl_config_check_afu_index(struct pci_dev *dev,
    struct ocxl_fn_config *fn, int afu_idx)
{
 int rc;
 u16 templ_version;
 u16 len, expected_len;

 pci_write_config_byte(dev,
   fn->dvsec_afu_info_pos + OCXL_DVSEC_AFU_INFO_AFU_IDX,
   afu_idx);

 rc = read_template_version(dev, fn, &len, &templ_version);
 if (rc)
  return rc;


 if (!templ_version && !len)
  return 0;

 dev_dbg(&dev->dev, "AFU descriptor template version %d.%d\n",
  templ_version >> 8, templ_version & 0xFF);

 switch (templ_version) {
 case 0x0005:
 case 0x0100:
  expected_len = OCXL_TEMPL_LEN_1_0;
  break;
 case 0x0101:
  expected_len = OCXL_TEMPL_LEN_1_1;
  break;
 default:
  dev_warn(&dev->dev, "Unknown AFU template version %#x\n",
   templ_version);
  expected_len = len;
 }
 if (len != expected_len)
  dev_warn(&dev->dev,
   "Unexpected template length %#x in AFU information, expected %#x for version %#x\n",
   len, expected_len, templ_version);
 return 1;
}
