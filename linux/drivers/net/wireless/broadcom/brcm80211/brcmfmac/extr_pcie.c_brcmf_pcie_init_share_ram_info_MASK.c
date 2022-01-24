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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcmf_pcie_shared_info {int flags; scalar_t__ version; scalar_t__ max_rxbufpost; void* rx_dataoffset; void* ring_info_addr; void* dtoh_mb_data_addr; void* htod_mb_data_addr; scalar_t__ tcm_base_address; } ;
struct brcmf_pciedev_info {int dma_idx_sz; struct brcmf_pcie_shared_info shared; TYPE_1__* pdev; } ;
struct brcmf_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BRCMF_DEF_MAX_RXBUFPOST ; 
 scalar_t__ BRCMF_PCIE_MAX_SHARED_VERSION ; 
 scalar_t__ BRCMF_PCIE_MIN_SHARED_VERSION ; 
 int BRCMF_PCIE_SHARED_DMA_2B_IDX ; 
 int BRCMF_PCIE_SHARED_DMA_INDEX ; 
 int BRCMF_PCIE_SHARED_VERSION_MASK ; 
 scalar_t__ BRCMF_SHARED_DTOH_MB_DATA_ADDR_OFFSET ; 
 scalar_t__ BRCMF_SHARED_HTOD_MB_DATA_ADDR_OFFSET ; 
 scalar_t__ BRCMF_SHARED_MAX_RXBUFPOST_OFFSET ; 
 scalar_t__ BRCMF_SHARED_RING_INFO_ADDR_OFFSET ; 
 scalar_t__ BRCMF_SHARED_RX_DATAOFFSET_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_bus*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*) ; 
 scalar_t__ FUNC3 (struct brcmf_pciedev_info*,scalar_t__) ; 
 void* FUNC4 (struct brcmf_pciedev_info*,scalar_t__) ; 
 struct brcmf_bus* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct brcmf_pciedev_info *devinfo,
			       u32 sharedram_addr)
{
	struct brcmf_bus *bus = FUNC5(&devinfo->pdev->dev);
	struct brcmf_pcie_shared_info *shared;
	u32 addr;

	shared = &devinfo->shared;
	shared->tcm_base_address = sharedram_addr;

	shared->flags = FUNC4(devinfo, sharedram_addr);
	shared->version = (u8)(shared->flags & BRCMF_PCIE_SHARED_VERSION_MASK);
	FUNC0(PCIE, "PCIe protocol version %d\n", shared->version);
	if ((shared->version > BRCMF_PCIE_MAX_SHARED_VERSION) ||
	    (shared->version < BRCMF_PCIE_MIN_SHARED_VERSION)) {
		FUNC1(bus, "Unsupported PCIE version %d\n",
			  shared->version);
		return -EINVAL;
	}

	/* check firmware support dma indicies */
	if (shared->flags & BRCMF_PCIE_SHARED_DMA_INDEX) {
		if (shared->flags & BRCMF_PCIE_SHARED_DMA_2B_IDX)
			devinfo->dma_idx_sz = sizeof(u16);
		else
			devinfo->dma_idx_sz = sizeof(u32);
	}

	addr = sharedram_addr + BRCMF_SHARED_MAX_RXBUFPOST_OFFSET;
	shared->max_rxbufpost = FUNC3(devinfo, addr);
	if (shared->max_rxbufpost == 0)
		shared->max_rxbufpost = BRCMF_DEF_MAX_RXBUFPOST;

	addr = sharedram_addr + BRCMF_SHARED_RX_DATAOFFSET_OFFSET;
	shared->rx_dataoffset = FUNC4(devinfo, addr);

	addr = sharedram_addr + BRCMF_SHARED_HTOD_MB_DATA_ADDR_OFFSET;
	shared->htod_mb_data_addr = FUNC4(devinfo, addr);

	addr = sharedram_addr + BRCMF_SHARED_DTOH_MB_DATA_ADDR_OFFSET;
	shared->dtoh_mb_data_addr = FUNC4(devinfo, addr);

	addr = sharedram_addr + BRCMF_SHARED_RING_INFO_ADDR_OFFSET;
	shared->ring_info_addr = FUNC4(devinfo, addr);

	FUNC0(PCIE, "max rx buf post %d, rx dataoffset %d\n",
		  shared->max_rxbufpost, shared->rx_dataoffset);

	FUNC2(devinfo);

	return 0;
}