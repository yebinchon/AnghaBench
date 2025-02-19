
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
struct crb_addr_pair {int addr; int data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCIE_SETUP_FUNCTION ;
 int PCIE_SETUP_FUNCTION2 ;
 int QLCNIC_ADDR_ERROR ;
 int QLCNIC_CAM_RAM (int) ;
 int QLCNIC_CMDPEG_STATE ;
 int QLCNIC_CRB_DDR_NET ;
 int QLCNIC_CRB_EPG ;
 int QLCNIC_CRB_I2C0 ;
 int QLCNIC_CRB_I2Q ;
 int QLCNIC_CRB_NIU ;
 int QLCNIC_CRB_PEG_NET_0 ;
 int QLCNIC_CRB_PEG_NET_1 ;
 int QLCNIC_CRB_PEG_NET_2 ;
 int QLCNIC_CRB_PEG_NET_3 ;
 int QLCNIC_CRB_PEG_NET_4 ;
 int QLCNIC_CRB_PEG_NET_D ;
 int QLCNIC_CRB_PEG_NET_I ;
 int QLCNIC_CRB_SMB ;
 int QLCNIC_CRB_SRE ;
 int QLCNIC_CRB_TIMER ;
 int QLCNIC_PCIE_REG (int ) ;
 scalar_t__ QLCNIC_PCI_CRBSPACE ;
 int QLCNIC_PEG_HALT_STATUS1 ;
 int QLCNIC_PEG_HALT_STATUS2 ;
 int QLCNIC_RCVPEG_STATE ;
 int QLCNIC_ROMUSB_GLB_SW_RESET ;
 int QLCRD32 (struct qlcnic_adapter*,int,int*) ;
 int QLCWR32 (struct qlcnic_adapter*,int,int) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int ROMUSB_GLB ;
 int dev_err (int *,char*,...) ;
 struct crb_addr_pair* kcalloc (int,int,int ) ;
 int kfree (struct crb_addr_pair*) ;
 int msleep (int) ;
 int qlcnic_decode_crb_addr (int) ;
 scalar_t__ qlcnic_rom_fast_read (struct qlcnic_adapter*,int,int*) ;
 int qlcnic_rom_unlock (struct qlcnic_adapter*) ;
 int usleep_range (int,int) ;

int qlcnic_pinit_from_rom(struct qlcnic_adapter *adapter)
{
 int addr, err = 0;
 int i, n, init_delay;
 struct crb_addr_pair *buf;
 unsigned offset;
 u32 off, val;
 struct pci_dev *pdev = adapter->pdev;

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CMDPEG_STATE, 0);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_RCVPEG_STATE, 0);



 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x10, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x14, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x18, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x1c, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x20, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_I2Q + 0x24, 0x0);


 QLCWR32(adapter, QLCNIC_CRB_NIU + 0x40, 0xff);

 QLCWR32(adapter, QLCNIC_CRB_NIU + 0x70000, 0x00);

 QLCWR32(adapter, QLCNIC_CRB_NIU + 0x80000, 0x00);

 QLCWR32(adapter, QLCNIC_CRB_NIU + 0x90000, 0x00);

 QLCWR32(adapter, QLCNIC_CRB_NIU + 0xa0000, 0x00);

 QLCWR32(adapter, QLCNIC_CRB_NIU + 0xb0000, 0x00);


 val = QLCRD32(adapter, QLCNIC_CRB_SRE + 0x1000, &err);
 if (err == -EIO)
  return err;
 QLCWR32(adapter, QLCNIC_CRB_SRE + 0x1000, val & (~(0x1)));


 QLCWR32(adapter, QLCNIC_CRB_EPG + 0x1300, 0x1);


 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x0, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x8, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x10, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x18, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x100, 0x0);
 QLCWR32(adapter, QLCNIC_CRB_TIMER + 0x200, 0x0);

 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_0 + 0x3c, 1);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_1 + 0x3c, 1);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_2 + 0x3c, 1);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_3 + 0x3c, 1);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_4 + 0x3c, 1);
 msleep(20);

 qlcnic_rom_unlock(adapter);

 QLCWR32(adapter, QLCNIC_ROMUSB_GLB_SW_RESET, 0xfeffffff);


 if (qlcnic_rom_fast_read(adapter, 0, &n) != 0 || (n != 0xcafecafe) ||
   qlcnic_rom_fast_read(adapter, 4, &n) != 0) {
  dev_err(&pdev->dev, "ERROR Reading crb_init area: val:%x\n", n);
  return -EIO;
 }
 offset = n & 0xffffU;
 n = (n >> 16) & 0xffffU;

 if (n >= 1024) {
  dev_err(&pdev->dev, "QLOGIC card flash not initialized.\n");
  return -EIO;
 }

 buf = kcalloc(n, sizeof(struct crb_addr_pair), GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < n; i++) {
  if (qlcnic_rom_fast_read(adapter, 8*i + 4*offset, &val) != 0 ||
  qlcnic_rom_fast_read(adapter, 8*i + 4*offset + 4, &addr) != 0) {
   kfree(buf);
   return -EIO;
  }

  buf[i].addr = addr;
  buf[i].data = val;
 }

 for (i = 0; i < n; i++) {

  off = qlcnic_decode_crb_addr(buf[i].addr);
  if (off == QLCNIC_ADDR_ERROR) {
   dev_err(&pdev->dev, "CRB init value out of range %x\n",
     buf[i].addr);
   continue;
  }
  off += QLCNIC_PCI_CRBSPACE;

  if (off & 1)
   continue;


  if (off == QLCNIC_CAM_RAM(0x1fc))
   continue;
  if (off == (QLCNIC_CRB_I2C0 + 0x1c))
   continue;
  if (off == (ROMUSB_GLB + 0xbc))
   continue;
  if (off == (ROMUSB_GLB + 0xa8))
   continue;
  if (off == (ROMUSB_GLB + 0xc8))
   continue;
  if (off == (ROMUSB_GLB + 0x24))
   continue;
  if (off == (ROMUSB_GLB + 0x1c))
   continue;
  if ((off & 0x0ff00000) == QLCNIC_CRB_DDR_NET)
   continue;

  if (off == QLCNIC_PCIE_REG(PCIE_SETUP_FUNCTION))
   continue;
  if (off == QLCNIC_PCIE_REG(PCIE_SETUP_FUNCTION2))
   continue;
  if ((off & 0x0ff00000) == QLCNIC_CRB_SMB)
   continue;

  init_delay = 1;


  if (off == QLCNIC_ROMUSB_GLB_SW_RESET)
   init_delay = 1000;

  QLCWR32(adapter, off, buf[i].data);

  msleep(init_delay);
 }
 kfree(buf);


 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_D + 0xec, 0x1e);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_D + 0x4c, 8);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_I + 0x4c, 8);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_0 + 0x8, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_0 + 0xc, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_1 + 0x8, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_1 + 0xc, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_2 + 0x8, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_2 + 0xc, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_3 + 0x8, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_3 + 0xc, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_4 + 0x8, 0);
 QLCWR32(adapter, QLCNIC_CRB_PEG_NET_4 + 0xc, 0);
 usleep_range(1000, 1500);

 QLC_SHARED_REG_WR32(adapter, QLCNIC_PEG_HALT_STATUS1, 0);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_PEG_HALT_STATUS2, 0);

 return 0;
}
