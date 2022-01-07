
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct ocxl_afu_config {int dvsec_afu_control_pos; void* actag_supported; void* pasid_supported_log; int idx; } ;


 int ENODEV ;
 void* EXTRACT_BITS (int ,int ,int) ;
 scalar_t__ OCXL_DVSEC_AFU_CTRL_ACTAG_SUP ;
 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_SUP ;
 int dev_err (int *,char*,int ) ;
 int find_dvsec_afu_ctrl (struct pci_dev*,int ) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int *) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static int read_afu_control(struct pci_dev *dev, struct ocxl_afu_config *afu)
{
 int pos;
 u8 val8;
 u16 val16;

 pos = find_dvsec_afu_ctrl(dev, afu->idx);
 if (!pos) {
  dev_err(&dev->dev, "Can't find AFU control DVSEC for AFU %d\n",
   afu->idx);
  return -ENODEV;
 }
 afu->dvsec_afu_control_pos = pos;

 pci_read_config_byte(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_SUP, &val8);
 afu->pasid_supported_log = EXTRACT_BITS(val8, 0, 4);

 pci_read_config_word(dev, pos + OCXL_DVSEC_AFU_CTRL_ACTAG_SUP, &val16);
 afu->actag_supported = EXTRACT_BITS(val16, 0, 11);
 return 0;
}
