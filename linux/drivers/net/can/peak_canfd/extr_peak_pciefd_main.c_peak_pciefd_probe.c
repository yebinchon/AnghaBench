
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pciefd_board {int can_count; int reg_base; int cmd_lock; struct pci_dev* pci_dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int device; int vendor; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCIEFD_BAR0_SIZE ;
 int PCIEFD_DRV_NAME ;
 scalar_t__ PCIEFD_FW_VERSION (int,int,int) ;
 int PCIEFD_REG_SYS_CTL_CLR ;
 int PCIEFD_REG_SYS_CTL_SET ;
 int PCIEFD_REG_SYS_VER1 ;
 int PCIEFD_REG_SYS_VER2 ;
 int PCIEFD_SYS_CTL_CLK_EN ;
 int PCIEFD_SYS_CTL_TS_RST ;
 int PCI_SUBSYSTEM_ID ;
 int can ;
 int dev_dbg (int *,char*,int ,int ,int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int,int,int) ;
 int dev_warn (int *,char*,int ,int) ;
 struct pciefd_board* devm_kzalloc (int *,int ,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pciefd_board*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcibios_err_to_errno (int) ;
 int pciefd_can_probe (struct pciefd_board*) ;
 int pciefd_can_remove_all (struct pciefd_board*) ;
 int pciefd_sys_readreg (struct pciefd_board*,int ) ;
 int pciefd_sys_writereg (struct pciefd_board*,int ,int ) ;
 int spin_lock_init (int *) ;
 int struct_size (struct pciefd_board*,int ,int) ;

__attribute__((used)) static int peak_pciefd_probe(struct pci_dev *pdev,
        const struct pci_device_id *ent)
{
 struct pciefd_board *pciefd;
 int err, can_count;
 u16 sub_sys_id;
 u8 hw_ver_major;
 u8 hw_ver_minor;
 u8 hw_ver_sub;
 u32 v2;

 err = pci_enable_device(pdev);
 if (err)
  return err;
 err = pci_request_regions(pdev, PCIEFD_DRV_NAME);
 if (err)
  goto err_disable_pci;


 err = pci_read_config_word(pdev, PCI_SUBSYSTEM_ID, &sub_sys_id);
 if (err)
  goto err_release_regions;

 dev_dbg(&pdev->dev, "probing device %04x:%04x:%04x\n",
  pdev->vendor, pdev->device, sub_sys_id);

 if (sub_sys_id >= 0x0012)
  can_count = 4;
 else if (sub_sys_id >= 0x0010)
  can_count = 3;
 else if (sub_sys_id >= 0x0004)
  can_count = 2;
 else
  can_count = 1;


 pciefd = devm_kzalloc(&pdev->dev, struct_size(pciefd, can, can_count),
         GFP_KERNEL);
 if (!pciefd) {
  err = -ENOMEM;
  goto err_release_regions;
 }


 pciefd->pci_dev = pdev;
 spin_lock_init(&pciefd->cmd_lock);


 pciefd->reg_base = pci_iomap(pdev, 0, PCIEFD_BAR0_SIZE);
 if (!pciefd->reg_base) {
  dev_err(&pdev->dev, "failed to map PCI resource #0\n");
  err = -ENOMEM;
  goto err_release_regions;
 }


 v2 = pciefd_sys_readreg(pciefd, PCIEFD_REG_SYS_VER2);

 hw_ver_major = (v2 & 0x0000f000) >> 12;
 hw_ver_minor = (v2 & 0x00000f00) >> 8;
 hw_ver_sub = (v2 & 0x000000f0) >> 4;

 dev_info(&pdev->dev,
   "%ux CAN-FD PCAN-PCIe FPGA v%u.%u.%u:\n", can_count,
   hw_ver_major, hw_ver_minor, hw_ver_sub);
 pciefd_sys_writereg(pciefd, PCIEFD_SYS_CTL_CLK_EN,
       PCIEFD_REG_SYS_CTL_CLR);

 pci_set_master(pdev);


 while (pciefd->can_count < can_count) {
  err = pciefd_can_probe(pciefd);
  if (err)
   goto err_free_canfd;

  pciefd->can_count++;
 }


 pciefd_sys_writereg(pciefd, PCIEFD_SYS_CTL_TS_RST,
       PCIEFD_REG_SYS_CTL_SET);


 (void)pciefd_sys_readreg(pciefd, PCIEFD_REG_SYS_VER1);


 pciefd_sys_writereg(pciefd, PCIEFD_SYS_CTL_TS_RST,
       PCIEFD_REG_SYS_CTL_CLR);


 pciefd_sys_writereg(pciefd, PCIEFD_SYS_CTL_CLK_EN,
       PCIEFD_REG_SYS_CTL_SET);


 pci_set_drvdata(pdev, pciefd);

 return 0;

err_free_canfd:
 pciefd_can_remove_all(pciefd);

 pci_iounmap(pdev, pciefd->reg_base);

err_release_regions:
 pci_release_regions(pdev);

err_disable_pci:
 pci_disable_device(pdev);




 return pcibios_err_to_errno(err);
}
