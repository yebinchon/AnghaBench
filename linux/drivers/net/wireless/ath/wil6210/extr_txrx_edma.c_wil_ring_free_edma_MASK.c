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
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
struct wil_tx_enhanced_desc {int dummy; } ;
struct TYPE_4__ {void* va; int /*<<< orphan*/  pa; } ;
struct wil_ring {int size; size_t swtail; struct wil_ctx* ctx; TYPE_3__* va; int /*<<< orphan*/  pa; TYPE_1__ edma_rx_swtail; scalar_t__ is_rx; } ;
struct wil_ctx {scalar_t__ skb; } ;
struct wil6210_priv {struct wil_ring* ring_tx; int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  enhanced; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil_ring*) ; 
 void* FUNC8 (struct wil_ring*) ; 
 struct device* FUNC9 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 

__attribute__((used)) static void FUNC11(struct wil6210_priv *wil, struct wil_ring *ring)
{
	struct device *dev = FUNC9(wil);
	size_t sz;
	int ring_index = 0;

	if (!ring->va)
		return;

	sz = ring->size * sizeof(ring->va[0]);

	FUNC3(&wil->mutex);
	if (ring->is_rx) {
		FUNC4(wil, "free Rx ring [%d] 0x%p:%pad 0x%p\n",
			     ring->size, ring->va,
			     &ring->pa, ring->ctx);

		FUNC6(wil, ring);
		FUNC1(dev, sizeof(*ring->edma_rx_swtail.va),
				  ring->edma_rx_swtail.va,
				  ring->edma_rx_swtail.pa);
		goto out;
	}

	/* TX ring */
	ring_index = ring - wil->ring_tx;

	FUNC4(wil, "free Tx ring %d [%d] 0x%p:%pad 0x%p\n",
		     ring_index, ring->size, ring->va,
		     &ring->pa, ring->ctx);

	while (!FUNC7(ring)) {
		struct wil_ctx *ctx;

		struct wil_tx_enhanced_desc dd, *d = &dd;
		struct wil_tx_enhanced_desc *_d =
			(struct wil_tx_enhanced_desc *)
			&ring->va[ring->swtail].tx.enhanced;

		ctx = &ring->ctx[ring->swtail];
		if (!ctx) {
			FUNC5(wil,
				     "ctx(%d) was already completed\n",
				     ring->swtail);
			ring->swtail = FUNC8(ring);
			continue;
		}
		*d = *_d;
		FUNC10(dev, (union wil_tx_desc *)d, ctx);
		if (ctx->skb)
			FUNC0(ctx->skb);
		ring->swtail = FUNC8(ring);
	}

out:
	FUNC1(dev, sz, (void *)ring->va, ring->pa);
	FUNC2(ring->ctx);
	ring->pa = 0;
	ring->va = NULL;
	ring->ctx = NULL;
}