#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tw686x_video_channel {size_t ch; void** sg_descs; struct tw686x_dev* dev; struct tw686x_dma_desc* dma_descs; } ;
struct tw686x_dma_desc {int /*<<< orphan*/  phys; void* virt; scalar_t__ size; } ;
struct tw686x_dev {TYPE_2__* video_channels; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  pci_dev; } ;
struct TYPE_4__ {TYPE_1__* dma_descs; } ;
struct TYPE_3__ {void* virt; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DMA_PAGE_TABLE0_ADDR ; 
 int /*<<< orphan*/ * DMA_PAGE_TABLE1_ADDR ; 
 int ENOMEM ; 
 int TW686X_SG_TABLE_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tw686x_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,char*) ; 

__attribute__((used)) static int FUNC3(struct tw686x_video_channel *vc,
			       unsigned int pb)
{
	struct tw686x_dma_desc *desc = &vc->dma_descs[pb];
	struct tw686x_dev *dev = vc->dev;
	u32 reg = pb ? DMA_PAGE_TABLE1_ADDR[vc->ch] :
		       DMA_PAGE_TABLE0_ADDR[vc->ch];
	void *virt;

	if (desc->size) {

		virt = FUNC0(dev->pci_dev, desc->size,
					    &desc->phys);
		if (!virt) {
			FUNC2(&dev->v4l2_dev,
				 "dma%d: unable to allocate %s-buffer\n",
				 vc->ch, pb ? "B" : "P");
			return -ENOMEM;
		}
		desc->virt = virt;
		FUNC1(dev, reg, desc->phys);
	} else {
		virt = dev->video_channels[0].dma_descs[pb].virt +
		       vc->ch * TW686X_SG_TABLE_SIZE;
	}

	vc->sg_descs[pb] = virt;
	return 0;
}