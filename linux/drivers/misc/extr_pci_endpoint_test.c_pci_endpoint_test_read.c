
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_endpoint_test {size_t alignment; int irq_raised; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
typedef size_t dma_addr_t ;


 int COMMAND_WRITE ;
 int GFP_KERNEL ;
 int IRQ_TYPE_LEGACY ;
 int IRQ_TYPE_MSIX ;
 int IS_ALIGNED (size_t,size_t) ;
 int PCI_ENDPOINT_TEST_CHECKSUM ;
 int PCI_ENDPOINT_TEST_COMMAND ;
 int PCI_ENDPOINT_TEST_IRQ_NUMBER ;
 int PCI_ENDPOINT_TEST_IRQ_TYPE ;
 int PCI_ENDPOINT_TEST_LOWER_DST_ADDR ;
 int PCI_ENDPOINT_TEST_SIZE ;
 int PCI_ENDPOINT_TEST_UPPER_DST_ADDR ;
 size_t PTR_ALIGN (size_t,size_t) ;
 size_t SIZE_MAX ;
 scalar_t__ crc32_le (int ,void*,size_t) ;
 int dev_err (struct device*,char*) ;
 void* dma_alloc_coherent (struct device*,size_t,size_t*,int ) ;
 int dma_free_coherent (struct device*,size_t,void*,size_t) ;
 int irq_type ;
 int lower_32_bits (size_t) ;
 scalar_t__ pci_endpoint_test_readl (struct pci_endpoint_test*,int ) ;
 int pci_endpoint_test_writel (struct pci_endpoint_test*,int ,int) ;
 int upper_32_bits (size_t) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static bool pci_endpoint_test_read(struct pci_endpoint_test *test, size_t size)
{
 bool ret = 0;
 void *addr;
 dma_addr_t phys_addr;
 struct pci_dev *pdev = test->pdev;
 struct device *dev = &pdev->dev;
 void *orig_addr;
 dma_addr_t orig_phys_addr;
 size_t offset;
 size_t alignment = test->alignment;
 u32 crc32;

 if (size > SIZE_MAX - alignment)
  goto err;

 if (irq_type < IRQ_TYPE_LEGACY || irq_type > IRQ_TYPE_MSIX) {
  dev_err(dev, "Invalid IRQ type option\n");
  goto err;
 }

 orig_addr = dma_alloc_coherent(dev, size + alignment, &orig_phys_addr,
           GFP_KERNEL);
 if (!orig_addr) {
  dev_err(dev, "Failed to allocate destination address\n");
  ret = 0;
  goto err;
 }

 if (alignment && !IS_ALIGNED(orig_phys_addr, alignment)) {
  phys_addr = PTR_ALIGN(orig_phys_addr, alignment);
  offset = phys_addr - orig_phys_addr;
  addr = orig_addr + offset;
 } else {
  phys_addr = orig_phys_addr;
  addr = orig_addr;
 }

 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_LOWER_DST_ADDR,
     lower_32_bits(phys_addr));
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_UPPER_DST_ADDR,
     upper_32_bits(phys_addr));

 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_SIZE, size);

 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_TYPE, irq_type);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 1);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_COMMAND,
     COMMAND_WRITE);

 wait_for_completion(&test->irq_raised);

 crc32 = crc32_le(~0, addr, size);
 if (crc32 == pci_endpoint_test_readl(test, PCI_ENDPOINT_TEST_CHECKSUM))
  ret = 1;

 dma_free_coherent(dev, size + alignment, orig_addr, orig_phys_addr);
err:
 return ret;
}
