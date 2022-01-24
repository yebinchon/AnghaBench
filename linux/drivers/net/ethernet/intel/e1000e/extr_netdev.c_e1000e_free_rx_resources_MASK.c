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
struct e1000_ring {int count; int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; TYPE_1__* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ps_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct e1000_ring *rx_ring)
{
	struct e1000_adapter *adapter = rx_ring->adapter;
	struct pci_dev *pdev = adapter->pdev;
	int i;

	FUNC1(rx_ring);

	for (i = 0; i < rx_ring->count; i++)
		FUNC2(rx_ring->buffer_info[i].ps_pages);

	FUNC3(rx_ring->buffer_info);
	rx_ring->buffer_info = NULL;

	FUNC0(&pdev->dev, rx_ring->size, rx_ring->desc,
			  rx_ring->dma);
	rx_ring->desc = NULL;
}