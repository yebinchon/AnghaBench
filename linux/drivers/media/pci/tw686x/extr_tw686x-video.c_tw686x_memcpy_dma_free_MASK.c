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
struct tw686x_video_channel {struct tw686x_dev* dev; struct tw686x_dma_desc* dma_descs; } ;
struct tw686x_dma_desc {int /*<<< orphan*/ * virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  size; } ;
struct tw686x_dev {struct pci_dev* pci_dev; int /*<<< orphan*/  lock; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tw686x_video_channel *vc,
				   unsigned int pb)
{
	struct tw686x_dma_desc *desc = &vc->dma_descs[pb];
	struct tw686x_dev *dev = vc->dev;
	struct pci_dev *pci_dev;
	unsigned long flags;

	/* Check device presence. Shouldn't really happen! */
	FUNC2(&dev->lock, flags);
	pci_dev = dev->pci_dev;
	FUNC3(&dev->lock, flags);
	if (!pci_dev) {
		FUNC0(1, "trying to deallocate on missing device\n");
		return;
	}

	if (desc->virt) {
		FUNC1(dev->pci_dev, desc->size,
				    desc->virt, desc->phys);
		desc->virt = NULL;
	}
}