
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int test_desc ;
struct tg3_internal_buffer_desc {int addr_hi; int addr_lo; int nic_mbuf; int len; int cqid_sqid; int flags; } ;
struct tg3 {int pdev; } ;
typedef int dma_addr_t ;


 int BUFMGR_MODE ;
 int ENODEV ;
 int FTQ_DMA_HIGH_READ_FIFO_ENQDEQ ;
 int FTQ_DMA_HIGH_WRITE_FIFO_ENQDEQ ;
 int FTQ_RCVBD_COMP_FIFO_ENQDEQ ;
 int FTQ_RCVDATA_COMP_FIFO_ENQDEQ ;
 int FTQ_RESET ;
 int NIC_SRAM_DMA_DESC_POOL_BASE ;
 int RDMAC_MODE ;
 int RDMAC_MODE_ENABLE ;
 int RDMAC_STATUS ;
 int TG3PCI_MEM_WIN_BASE_ADDR ;
 int TG3PCI_MEM_WIN_DATA ;
 int WDMAC_MODE ;
 int WDMAC_MODE_ENABLE ;
 int WDMAC_STATUS ;
 int pci_write_config_dword (int ,int ,int) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;
 int tw32_f (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_do_test_dma(struct tg3 *tp, u32 *buf, dma_addr_t buf_dma,
      int size, bool to_device)
{
 struct tg3_internal_buffer_desc test_desc;
 u32 sram_dma_descs;
 int i, ret;

 sram_dma_descs = NIC_SRAM_DMA_DESC_POOL_BASE;

 tw32(FTQ_RCVBD_COMP_FIFO_ENQDEQ, 0);
 tw32(FTQ_RCVDATA_COMP_FIFO_ENQDEQ, 0);
 tw32(RDMAC_STATUS, 0);
 tw32(WDMAC_STATUS, 0);

 tw32(BUFMGR_MODE, 0);
 tw32(FTQ_RESET, 0);

 test_desc.addr_hi = ((u64) buf_dma) >> 32;
 test_desc.addr_lo = buf_dma & 0xffffffff;
 test_desc.nic_mbuf = 0x00002100;
 test_desc.len = size;
 if (to_device) {
  test_desc.cqid_sqid = (13 << 8) | 2;

  tw32_f(RDMAC_MODE, RDMAC_MODE_ENABLE);
  udelay(40);
 } else {
  test_desc.cqid_sqid = (16 << 8) | 7;

  tw32_f(WDMAC_MODE, WDMAC_MODE_ENABLE);
  udelay(40);
 }
 test_desc.flags = 0x00000005;

 for (i = 0; i < (sizeof(test_desc) / sizeof(u32)); i++) {
  u32 val;

  val = *(((u32 *)&test_desc) + i);
  pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR,
           sram_dma_descs + (i * sizeof(u32)));
  pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_DATA, val);
 }
 pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR, 0);

 if (to_device)
  tw32(FTQ_DMA_HIGH_READ_FIFO_ENQDEQ, sram_dma_descs);
 else
  tw32(FTQ_DMA_HIGH_WRITE_FIFO_ENQDEQ, sram_dma_descs);

 ret = -ENODEV;
 for (i = 0; i < 40; i++) {
  u32 val;

  if (to_device)
   val = tr32(FTQ_RCVBD_COMP_FIFO_ENQDEQ);
  else
   val = tr32(FTQ_RCVDATA_COMP_FIFO_ENQDEQ);
  if ((val & 0xffff) == sram_dma_descs) {
   ret = 0;
   break;
  }

  udelay(100);
 }

 return ret;
}
