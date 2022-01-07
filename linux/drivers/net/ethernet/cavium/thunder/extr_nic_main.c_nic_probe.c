
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nic_mbx {int dummy; } nic_mbx ;
typedef int u8 ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct nicpf {int vf_lmac_map; TYPE_1__* hw; int node; int reg_base; struct pci_dev* pdev; } ;
struct hw_info {int dummy; } ;
struct TYPE_2__ {int bgx_cnt; } ;


 int BUILD_BUG_ON (int) ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_LMAC_PER_BGX ;
 int PCI_CFG_REG_BAR_NUM ;
 int dev_err (struct device*,char*,...) ;
 int devm_kmalloc_array (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int nic_get_hw_info (struct nicpf*) ;
 int nic_get_node_id (struct pci_dev*) ;
 int nic_init_hw (struct nicpf*) ;
 int nic_register_interrupts (struct nicpf*) ;
 int nic_set_lmac_vf_mapping (struct nicpf*) ;
 int nic_sriov_init (struct pci_dev*,struct nicpf*) ;
 int nic_unregister_interrupts (struct nicpf*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct nicpf*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;

__attribute__((used)) static int nic_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct device *dev = &pdev->dev;
 struct nicpf *nic;
 u8 max_lmac;
 int err;

 BUILD_BUG_ON(sizeof(union nic_mbx) > 16);

 nic = devm_kzalloc(dev, sizeof(*nic), GFP_KERNEL);
 if (!nic)
  return -ENOMEM;

 nic->hw = devm_kzalloc(dev, sizeof(struct hw_info), GFP_KERNEL);
 if (!nic->hw)
  return -ENOMEM;

 pci_set_drvdata(pdev, nic);

 nic->pdev = pdev;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(dev, "Failed to enable PCI device\n");
  pci_set_drvdata(pdev, ((void*)0));
  return err;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(dev, "PCI request regions failed 0x%x\n", err);
  goto err_disable_device;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(48));
 if (err) {
  dev_err(dev, "Unable to get usable DMA configuration\n");
  goto err_release_regions;
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(48));
 if (err) {
  dev_err(dev, "Unable to get 48-bit DMA for consistent allocations\n");
  goto err_release_regions;
 }


 nic->reg_base = pcim_iomap(pdev, PCI_CFG_REG_BAR_NUM, 0);
 if (!nic->reg_base) {
  dev_err(dev, "Cannot map config register space, aborting\n");
  err = -ENOMEM;
  goto err_release_regions;
 }

 nic->node = nic_get_node_id(pdev);


 nic_get_hw_info(nic);


 err = -ENOMEM;
 max_lmac = nic->hw->bgx_cnt * MAX_LMAC_PER_BGX;

 nic->vf_lmac_map = devm_kmalloc_array(dev, max_lmac, sizeof(u8),
           GFP_KERNEL);
 if (!nic->vf_lmac_map)
  goto err_release_regions;


 nic_init_hw(nic);

 nic_set_lmac_vf_mapping(nic);


 err = nic_register_interrupts(nic);
 if (err)
  goto err_release_regions;


 err = nic_sriov_init(pdev, nic);
 if (err)
  goto err_unregister_interrupts;

 return 0;

err_unregister_interrupts:
 nic_unregister_interrupts(nic);
err_release_regions:
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
 return err;
}
