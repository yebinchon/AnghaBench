#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sge_fl {size_t cidx; size_t size; int /*<<< orphan*/  avail; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {int /*<<< orphan*/ * page; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rx_sw_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct rx_sw_desc*) ; 
 scalar_t__ FUNC3 (struct rx_sw_desc*) ; 

__attribute__((used)) static void FUNC4(struct adapter *adapter, struct sge_fl *fl)
{
	struct rx_sw_desc *sdesc = &fl->sdesc[fl->cidx];

	if (FUNC3(sdesc))
		FUNC0(adapter->pdev_dev, FUNC1(sdesc),
			       FUNC2(adapter, sdesc),
			       PCI_DMA_FROMDEVICE);
	sdesc->page = NULL;
	if (++fl->cidx == fl->size)
		fl->cidx = 0;
	fl->avail--;
}