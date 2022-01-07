
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mei_me_hw {TYPE_1__* cfg; } ;
struct mei_fw_status {int count; int * status; } ;
struct mei_device {int dev; } ;
struct TYPE_2__ {struct mei_fw_status fw_status; } ;


 int EINVAL ;
 int MEI_FW_STATUS_MAX ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 struct pci_dev* to_pci_dev (int ) ;
 int trace_mei_pci_cfg_read (int ,char*,int ,int ) ;

__attribute__((used)) static int mei_me_fw_status(struct mei_device *dev,
       struct mei_fw_status *fw_status)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);
 struct mei_me_hw *hw = to_me_hw(dev);
 const struct mei_fw_status *fw_src = &hw->cfg->fw_status;
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
