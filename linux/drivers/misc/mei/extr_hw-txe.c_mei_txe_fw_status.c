
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mei_fw_status {int count; int * status; } ;
struct mei_device {int dev; } ;


 int EINVAL ;
 int MEI_FW_STATUS_MAX ;
 struct mei_fw_status mei_txe_fw_sts ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 struct pci_dev* to_pci_dev (int ) ;
 int trace_mei_pci_cfg_read (int ,char*,int ,int ) ;

__attribute__((used)) static int mei_txe_fw_status(struct mei_device *dev,
        struct mei_fw_status *fw_status)
{
 const struct mei_fw_status *fw_src = &mei_txe_fw_sts;
 struct pci_dev *pdev = to_pci_dev(dev->dev);
 int ret;
 int i;

 if (!fw_status)
  return -EINVAL;

 fw_status->count = fw_src->count;
 for (i = 0; i < fw_src->count && i < MEI_FW_STATUS_MAX; i++) {
  ret = pci_read_config_dword(pdev, fw_src->status[i],
         &fw_status->status[i]);
  trace_mei_pci_cfg_read(dev->dev, "PCI_CFG_HSF_X",
           fw_src->status[i],
           fw_status->status[i]);
  if (ret)
   return ret;
 }

 return 0;
}
