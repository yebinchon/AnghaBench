
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct myri10ge_priv {int tx_boundary; int read_dma; int write_dma; int read_write_dma; TYPE_1__* pdev; } ;
struct myri10ge_cmd {int data0; int data2; void* data1; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MXGEFW_CMD_UNALIGNED_TEST ;
 void* MYRI10GE_HIGHPART_TO_U32 (int ) ;
 void* MYRI10GE_LOWPART_TO_U32 (int ) ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int dev_warn (int *,char*,char*,int) ;
 int myri10ge_send_cmd (struct myri10ge_priv*,int,struct myri10ge_cmd*,int ) ;
 int pci_dma_mapping_error (TYPE_1__*,int ) ;
 int pci_map_page (TYPE_1__*,struct page*,int ,int ,int ) ;
 int pci_unmap_page (TYPE_1__*,int ,int ,int ) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int myri10ge_dma_test(struct myri10ge_priv *mgp, int test_type)
{
 struct myri10ge_cmd cmd;
 int status;
 u32 len;
 struct page *dmatest_page;
 dma_addr_t dmatest_bus;
 char *test = " ";

 dmatest_page = alloc_page(GFP_KERNEL);
 if (!dmatest_page)
  return -ENOMEM;
 dmatest_bus = pci_map_page(mgp->pdev, dmatest_page, 0, PAGE_SIZE,
       DMA_BIDIRECTIONAL);
 if (unlikely(pci_dma_mapping_error(mgp->pdev, dmatest_bus))) {
  __free_page(dmatest_page);
  return -ENOMEM;
 }
 len = mgp->tx_boundary;

 cmd.data0 = MYRI10GE_LOWPART_TO_U32(dmatest_bus);
 cmd.data1 = MYRI10GE_HIGHPART_TO_U32(dmatest_bus);
 cmd.data2 = len * 0x10000;
 status = myri10ge_send_cmd(mgp, test_type, &cmd, 0);
 if (status != 0) {
  test = "read";
  goto abort;
 }
 mgp->read_dma = ((cmd.data0 >> 16) * len * 2) / (cmd.data0 & 0xffff);
 cmd.data0 = MYRI10GE_LOWPART_TO_U32(dmatest_bus);
 cmd.data1 = MYRI10GE_HIGHPART_TO_U32(dmatest_bus);
 cmd.data2 = len * 0x1;
 status = myri10ge_send_cmd(mgp, test_type, &cmd, 0);
 if (status != 0) {
  test = "write";
  goto abort;
 }
 mgp->write_dma = ((cmd.data0 >> 16) * len * 2) / (cmd.data0 & 0xffff);

 cmd.data0 = MYRI10GE_LOWPART_TO_U32(dmatest_bus);
 cmd.data1 = MYRI10GE_HIGHPART_TO_U32(dmatest_bus);
 cmd.data2 = len * 0x10001;
 status = myri10ge_send_cmd(mgp, test_type, &cmd, 0);
 if (status != 0) {
  test = "read/write";
  goto abort;
 }
 mgp->read_write_dma = ((cmd.data0 >> 16) * len * 2 * 2) /
     (cmd.data0 & 0xffff);

abort:
 pci_unmap_page(mgp->pdev, dmatest_bus, PAGE_SIZE, DMA_BIDIRECTIONAL);
 put_page(dmatest_page);

 if (status != 0 && test_type != MXGEFW_CMD_UNALIGNED_TEST)
  dev_warn(&mgp->pdev->dev, "DMA %s benchmark failed: %d\n",
    test, status);

 return status;
}
