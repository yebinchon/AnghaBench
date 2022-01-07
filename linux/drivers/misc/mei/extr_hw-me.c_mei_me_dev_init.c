
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct mei_me_hw {struct mei_cfg const* cfg; } ;
struct mei_device {int fw_f_fw_ver_supported; TYPE_1__* dr_dscr; } ;
struct mei_cfg {int fw_ver_supported; int * dma_size; } ;
struct TYPE_2__ {int size; } ;


 int DMA_DSCR_NUM ;
 int GFP_KERNEL ;
 struct mei_device* devm_kzalloc (int *,int,int ) ;
 int mei_device_init (struct mei_device*,int *,int *) ;
 int mei_me_hw_ops ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

struct mei_device *mei_me_dev_init(struct pci_dev *pdev,
       const struct mei_cfg *cfg)
{
 struct mei_device *dev;
 struct mei_me_hw *hw;
 int i;

 dev = devm_kzalloc(&pdev->dev, sizeof(struct mei_device) +
      sizeof(struct mei_me_hw), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 hw = to_me_hw(dev);

 for (i = 0; i < DMA_DSCR_NUM; i++)
  dev->dr_dscr[i].size = cfg->dma_size[i];

 mei_device_init(dev, &pdev->dev, &mei_me_hw_ops);
 hw->cfg = cfg;

 dev->fw_f_fw_ver_supported = cfg->fw_ver_supported;

 return dev;
}
