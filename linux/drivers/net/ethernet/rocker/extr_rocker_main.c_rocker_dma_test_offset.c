
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PCI_DMA_BIDIRECTIONAL ;
 int ROCKER_TEST_DMA_BUF_SIZE ;
 int ROCKER_TEST_DMA_CTRL_CLEAR ;
 int ROCKER_TEST_DMA_CTRL_FILL ;
 int ROCKER_TEST_DMA_CTRL_INVERT ;
 int ROCKER_TEST_DMA_FILL_PATTERN ;
 int TEST_DMA_ADDR ;
 int TEST_DMA_SIZE ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,unsigned char*,int,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int,int ) ;
 int prandom_bytes (unsigned char*,int) ;
 int rocker_dma_test_one (struct rocker const*,struct rocker_wait*,int ,int ,unsigned char*,unsigned char*,int) ;
 int rocker_write32 (struct rocker const*,int ,int) ;
 int rocker_write64 (struct rocker const*,int ,int ) ;

__attribute__((used)) static int rocker_dma_test_offset(const struct rocker *rocker,
      struct rocker_wait *wait, int offset)
{
 struct pci_dev *pdev = rocker->pdev;
 unsigned char *alloc;
 unsigned char *buf;
 unsigned char *expect;
 dma_addr_t dma_handle;
 int i;
 int err;

 alloc = kzalloc(ROCKER_TEST_DMA_BUF_SIZE * 2 + offset,
   GFP_KERNEL | GFP_DMA);
 if (!alloc)
  return -ENOMEM;
 buf = alloc + offset;
 expect = buf + ROCKER_TEST_DMA_BUF_SIZE;

 dma_handle = pci_map_single(pdev, buf, ROCKER_TEST_DMA_BUF_SIZE,
        PCI_DMA_BIDIRECTIONAL);
 if (pci_dma_mapping_error(pdev, dma_handle)) {
  err = -EIO;
  goto free_alloc;
 }

 rocker_write64(rocker, TEST_DMA_ADDR, dma_handle);
 rocker_write32(rocker, TEST_DMA_SIZE, ROCKER_TEST_DMA_BUF_SIZE);

 memset(expect, ROCKER_TEST_DMA_FILL_PATTERN, ROCKER_TEST_DMA_BUF_SIZE);
 err = rocker_dma_test_one(rocker, wait, ROCKER_TEST_DMA_CTRL_FILL,
      dma_handle, buf, expect,
      ROCKER_TEST_DMA_BUF_SIZE);
 if (err)
  goto unmap;

 memset(expect, 0, ROCKER_TEST_DMA_BUF_SIZE);
 err = rocker_dma_test_one(rocker, wait, ROCKER_TEST_DMA_CTRL_CLEAR,
      dma_handle, buf, expect,
      ROCKER_TEST_DMA_BUF_SIZE);
 if (err)
  goto unmap;

 prandom_bytes(buf, ROCKER_TEST_DMA_BUF_SIZE);
 for (i = 0; i < ROCKER_TEST_DMA_BUF_SIZE; i++)
  expect[i] = ~buf[i];
 err = rocker_dma_test_one(rocker, wait, ROCKER_TEST_DMA_CTRL_INVERT,
      dma_handle, buf, expect,
      ROCKER_TEST_DMA_BUF_SIZE);
 if (err)
  goto unmap;

unmap:
 pci_unmap_single(pdev, dma_handle, ROCKER_TEST_DMA_BUF_SIZE,
    PCI_DMA_BIDIRECTIONAL);
free_alloc:
 kfree(alloc);

 return err;
}
