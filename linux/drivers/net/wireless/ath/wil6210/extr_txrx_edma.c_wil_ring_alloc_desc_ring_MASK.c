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
struct TYPE_2__ {void* va; int /*<<< orphan*/  pa; } ;
struct wil_ring {int size; int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * va; int /*<<< orphan*/  pa; scalar_t__ is_rx; TYPE_1__ edma_rx_swtail; scalar_t__ swtail; scalar_t__ swhead; } ;
struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,...) ; 
 struct device* FUNC6 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC7(struct wil6210_priv *wil,
				    struct wil_ring *ring)
{
	struct device *dev = FUNC6(wil);
	size_t sz = ring->size * sizeof(ring->va[0]);

	FUNC5(wil, "alloc_desc_ring:\n");

	FUNC0(sizeof(ring->va[0]) != 32);

	ring->swhead = 0;
	ring->swtail = 0;
	ring->ctx = FUNC3(ring->size, sizeof(ring->ctx[0]), GFP_KERNEL);
	if (!ring->ctx)
		goto err;

	ring->va = FUNC1(dev, sz, &ring->pa, GFP_KERNEL);
	if (!ring->va)
		goto err_free_ctx;

	if (ring->is_rx) {
		sz = sizeof(*ring->edma_rx_swtail.va);
		ring->edma_rx_swtail.va =
			FUNC1(dev, sz, &ring->edma_rx_swtail.pa,
					   GFP_KERNEL);
		if (!ring->edma_rx_swtail.va)
			goto err_free_va;
	}

	FUNC5(wil, "%s ring[%d] 0x%p:%pad 0x%p\n",
		     ring->is_rx ? "RX" : "TX",
		     ring->size, ring->va, &ring->pa, ring->ctx);

	return 0;
err_free_va:
	FUNC2(dev, ring->size * sizeof(ring->va[0]),
			  (void *)ring->va, ring->pa);
	ring->va = NULL;
err_free_ctx:
	FUNC4(ring->ctx);
	ring->ctx = NULL;
err:
	return -ENOMEM;
}