#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct r592_device {int dma_error; TYPE_2__* req; TYPE_1__* pci_dev; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  dma_capable; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {scalar_t__ data_dir; TYPE_3__ sg; int /*<<< orphan*/  long_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int R592_LFIFO_SIZE ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct r592_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r592_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct r592_device *dev)
{
	int len, sg_count;
	bool is_write;

	if (!dev->dma_capable || !dev->req->long_data)
		return -EINVAL;

	len = dev->req->sg.length;
	is_write = dev->req->data_dir == WRITE;

	if (len != R592_LFIFO_SIZE)
		return -EINVAL;

	FUNC0("doing dma transfer");

	dev->dma_error = 0;
	FUNC7(&dev->dma_done);

	/* TODO: hidden assumption about nenth beeing always 1 */
	sg_count = FUNC1(&dev->pci_dev->dev, &dev->req->sg, 1, is_write ?
		PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);

	if (sg_count != 1 || FUNC8(&dev->req->sg) < R592_LFIFO_SIZE) {
		FUNC3("problem in dma_map_sg");
		return -EIO;
	}

	FUNC5(dev, is_write);

	/* Wait for DMA completion */
	if (!FUNC9(
			&dev->dma_done, FUNC4(1000))) {
		FUNC3("DMA timeout");
		FUNC6(dev, -ETIMEDOUT);
	}

	FUNC2(&dev->pci_dev->dev, &dev->req->sg, 1, is_write ?
		PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);


	return dev->dma_error;
}