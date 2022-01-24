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
typedef  int /*<<< orphan*/  u32 ;
struct solo_dev {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct solo_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct solo_dev *solo_dev, int wr,
		 void *sys_addr, u32 ext_addr, u32 size,
		 int repeat, u32 ext_size)
{
	dma_addr_t dma_addr;
	int ret;

	if (FUNC0((unsigned long)sys_addr & 0x03))
		return -EINVAL;
	if (FUNC0(!size))
		return -EINVAL;

	dma_addr = FUNC2(solo_dev->pdev, sys_addr, size,
				  wr ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
	if (FUNC1(solo_dev->pdev, dma_addr))
		return -ENOMEM;

	ret = FUNC4(solo_dev, wr, dma_addr, ext_addr, size,
			     repeat, ext_size);

	FUNC3(solo_dev->pdev, dma_addr, size,
			 wr ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);

	return ret;
}