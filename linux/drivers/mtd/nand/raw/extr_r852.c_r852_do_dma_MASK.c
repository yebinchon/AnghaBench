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
typedef  void uint8_t ;
struct r852_device {int dma_dir; int dma_stage; void* bounce_buffer; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  phys_bounce_buffer; int /*<<< orphan*/  phys_dma_addr; TYPE_1__* pci_dev; int /*<<< orphan*/  dma_state; int /*<<< orphan*/  dma_done; scalar_t__ dma_error; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_INTERNAL ; 
 int /*<<< orphan*/  DMA_MEMORY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int R852_DMA_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r852_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r852_device*) ; 
 int FUNC6 (struct r852_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct r852_device *dev, uint8_t *buf, int do_read)
{
	int bounce = 0;
	unsigned long flags;
	int error;

	dev->dma_error = 0;

	/* Set dma direction */
	dev->dma_dir = do_read;
	dev->dma_stage = 1;
	FUNC7(&dev->dma_done);

	FUNC0("doing dma %s ", do_read ? "read" : "write");

	/* Set initial dma state: for reading first fill on board buffer,
	  from device, for writes first fill the buffer  from memory*/
	dev->dma_state = do_read ? DMA_INTERNAL : DMA_MEMORY;

	/* if incoming buffer is not page aligned, we should do bounce */
	if ((unsigned long)buf & (R852_DMA_LEN-1))
		bounce = 1;

	if (!bounce) {
		dev->phys_dma_addr = FUNC1(&dev->pci_dev->dev, buf,
			R852_DMA_LEN,
			do_read ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
		if (FUNC2(&dev->pci_dev->dev, dev->phys_dma_addr))
			bounce = 1;
	}

	if (bounce) {
		FUNC0("dma: using bounce buffer");
		dev->phys_dma_addr = dev->phys_bounce_buffer;
		if (!do_read)
			FUNC3(dev->bounce_buffer, buf, R852_DMA_LEN);
	}

	/* Enable DMA */
	FUNC8(&dev->irqlock, flags);
	FUNC5(dev);
	FUNC9(&dev->irqlock, flags);

	/* Wait till complete */
	error = FUNC6(dev);

	if (error) {
		FUNC4(dev, error);
		return;
	}

	if (do_read && bounce)
		FUNC3((void *)buf, dev->bounce_buffer, R852_DMA_LEN);
}