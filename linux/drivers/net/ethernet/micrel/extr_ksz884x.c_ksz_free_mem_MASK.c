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
struct TYPE_2__ {int /*<<< orphan*/  rx_desc_info; int /*<<< orphan*/  tx_desc_info; } ;
struct dev_info {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct dev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_info*) ; 

__attribute__((used)) static void FUNC2(struct dev_info *adapter)
{
	/* Free transmit buffers. */
	FUNC0(adapter, &adapter->hw.tx_desc_info,
		PCI_DMA_TODEVICE);

	/* Free receive buffers. */
	FUNC0(adapter, &adapter->hw.rx_desc_info,
		PCI_DMA_FROMDEVICE);

	/* Free descriptors. */
	FUNC1(adapter);
}