#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct wil_ring {int size; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  pa; TYPE_3__* va; scalar_t__ swtail; scalar_t__ swhead; } ;
struct wil6210_priv {int dma_addr_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct vring_tx_desc {TYPE_2__ dma; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct vring_tx_desc legacy; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TX_DMA_STATUS_DU ; 
 TYPE_3__* FUNC2 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,...) ; 
 struct device* FUNC7 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC8(struct wil6210_priv *wil, struct wil_ring *vring)
{
	struct device *dev = FUNC7(wil);
	size_t sz = vring->size * sizeof(vring->va[0]);
	uint i;

	FUNC6(wil, "vring_alloc:\n");

	FUNC0(sizeof(vring->va[0]) != 32);

	vring->swhead = 0;
	vring->swtail = 0;
	vring->ctx = FUNC4(vring->size, sizeof(vring->ctx[0]), GFP_KERNEL);
	if (!vring->ctx) {
		vring->va = NULL;
		return -ENOMEM;
	}

	/* vring->va should be aligned on its size rounded up to power of 2
	 * This is granted by the dma_alloc_coherent.
	 *
	 * HW has limitation that all vrings addresses must share the same
	 * upper 16 msb bits part of 48 bits address. To workaround that,
	 * if we are using more than 32 bit addresses switch to 32 bit
	 * allocation before allocating vring memory.
	 *
	 * There's no check for the return value of dma_set_mask_and_coherent,
	 * since we assume if we were able to set the mask during
	 * initialization in this system it will not fail if we set it again
	 */
	if (wil->dma_addr_size > 32)
		FUNC3(dev, FUNC1(32));

	vring->va = FUNC2(dev, sz, &vring->pa, GFP_KERNEL);
	if (!vring->va) {
		FUNC5(vring->ctx);
		vring->ctx = NULL;
		return -ENOMEM;
	}

	if (wil->dma_addr_size > 32)
		FUNC3(dev,
					  FUNC1(wil->dma_addr_size));

	/* initially, all descriptors are SW owned
	 * For Tx and Rx, ownership bit is at the same location, thus
	 * we can use any
	 */
	for (i = 0; i < vring->size; i++) {
		volatile struct vring_tx_desc *_d =
			&vring->va[i].tx.legacy;

		_d->dma.status = TX_DMA_STATUS_DU;
	}

	FUNC6(wil, "vring[%d] 0x%p:%pad 0x%p\n", vring->size,
		     vring->va, &vring->pa, vring->ctx);

	return 0;
}