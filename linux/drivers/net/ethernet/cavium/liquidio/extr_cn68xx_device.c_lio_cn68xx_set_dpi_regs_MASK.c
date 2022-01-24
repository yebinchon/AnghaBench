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
typedef  int u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_DPI_CTL ; 
 int /*<<< orphan*/  CN6XXX_DPI_DMA_CONTROL ; 
 int CN6XXX_DPI_DMA_CTL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct octeon_device *oct)
{
	u32 i;
	u32 fifo_sizes[6] = { 3, 3, 1, 1, 1, 8 };

	FUNC4(oct, CN6XXX_DPI_DMA_CTL_MASK, CN6XXX_DPI_DMA_CONTROL);
	FUNC2(&oct->pci_dev->dev, "DPI_DMA_CONTROL: 0x%016llx\n",
		FUNC3(oct, CN6XXX_DPI_DMA_CONTROL));

	for (i = 0; i < 6; i++) {
		/* Prevent service of instruction queue for all DMA engines
		 * Engine 5 will remain 0. Engines 0 - 4 will be setup by
		 * core.
		 */
		FUNC4(oct, 0, FUNC1(i));
		FUNC4(oct, fifo_sizes[i], FUNC0(i));
		FUNC2(&oct->pci_dev->dev, "DPI_ENG_BUF%d: 0x%016llx\n", i,
			FUNC3(oct, FUNC0(i)));
	}

	/* DPI_SLI_PRT_CFG has MPS and MRRS settings that will be set
	 * separately.
	 */

	FUNC4(oct, 1, CN6XXX_DPI_CTL);
	FUNC2(&oct->pci_dev->dev, "DPI_CTL: 0x%016llx\n",
		FUNC3(oct, CN6XXX_DPI_CTL));
}