#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct efx_nic {struct pci_dev* pci_dev; scalar_t__ membase_phys; int /*<<< orphan*/  membase; int /*<<< orphan*/  net_dev; TYPE_1__* type; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int max_dma_mask; unsigned int (* mem_map_size ) (struct efx_nic*) ;int (* mem_bar ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int,char*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 unsigned int FUNC10 (struct efx_nic*) ; 
 int FUNC11 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC12(struct efx_nic *efx)
{
	struct pci_dev *pci_dev = efx->pci_dev;
	dma_addr_t dma_mask = efx->type->max_dma_mask;
	unsigned int mem_map_size = efx->type->mem_map_size(efx);
	int rc, bar;

	FUNC2(efx, probe, efx->net_dev, "initialising I/O\n");

	bar = efx->type->mem_bar(efx);

	rc = FUNC5(pci_dev);
	if (rc) {
		FUNC3(efx, probe, efx->net_dev,
			  "failed to enable PCI device\n");
		goto fail1;
	}

	FUNC9(pci_dev);

	/* Set the PCI DMA mask.  Try all possibilities from our genuine mask
	 * down to 32 bits, because some architectures will allow 40 bit
	 * masks event though they reject 46 bit masks.
	 */
	while (dma_mask > 0x7fffffffUL) {
		rc = FUNC0(&pci_dev->dev, dma_mask);
		if (rc == 0)
			break;
		dma_mask >>= 1;
	}
	if (rc) {
		FUNC3(efx, probe, efx->net_dev,
			  "could not find a suitable DMA mask\n");
		goto fail2;
	}
	FUNC2(efx, probe, efx->net_dev,
		  "using DMA mask %llx\n", (unsigned long long) dma_mask);

	efx->membase_phys = FUNC8(efx->pci_dev, bar);
	rc = FUNC7(pci_dev, bar, "sfc");
	if (rc) {
		FUNC3(efx, probe, efx->net_dev,
			  "request for memory BAR failed\n");
		rc = -EIO;
		goto fail3;
	}
	efx->membase = FUNC1(efx->membase_phys, mem_map_size);
	if (!efx->membase) {
		FUNC3(efx, probe, efx->net_dev,
			  "could not map memory BAR at %llx+%x\n",
			  (unsigned long long)efx->membase_phys, mem_map_size);
		rc = -ENOMEM;
		goto fail4;
	}
	FUNC2(efx, probe, efx->net_dev,
		  "memory BAR at %llx+%x (virtual %p)\n",
		  (unsigned long long)efx->membase_phys, mem_map_size,
		  efx->membase);

	return 0;

 fail4:
	FUNC6(efx->pci_dev, bar);
 fail3:
	efx->membase_phys = 0;
 fail2:
	FUNC4(efx->pci_dev);
 fail1:
	return rc;
}