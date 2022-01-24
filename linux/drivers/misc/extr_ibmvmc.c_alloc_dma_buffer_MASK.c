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
struct vio_dev {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(struct vio_dev *vdev, size_t size,
			      dma_addr_t *dma_handle)
{
	/* allocate memory */
	void *buffer = FUNC2(size, GFP_ATOMIC);

	if (!buffer) {
		*dma_handle = 0;
		return NULL;
	}

	/* DMA map */
	*dma_handle = FUNC0(&vdev->dev, buffer, size,
				     DMA_BIDIRECTIONAL);

	if (FUNC1(&vdev->dev, *dma_handle)) {
		*dma_handle = 0;
		FUNC3(buffer);
		return NULL;
	}

	return buffer;
}