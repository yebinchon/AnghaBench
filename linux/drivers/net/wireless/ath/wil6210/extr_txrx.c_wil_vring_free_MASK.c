#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef  int /*<<< orphan*/  u16 ;
struct wil_ring {int size; size_t swtail; size_t swhead; struct wil_ctx* ctx; TYPE_4__* va; int /*<<< orphan*/  pa; int /*<<< orphan*/  is_rx; } ;
struct wil_ctx {scalar_t__ skb; } ;
struct wil6210_priv {struct wil_ring* ring_tx; int /*<<< orphan*/  mutex; } ;
struct vring_tx_desc {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct vring_rx_desc {TYPE_3__ dma; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {struct vring_rx_desc legacy; } ;
struct TYPE_5__ {struct vring_tx_desc legacy; } ;
struct TYPE_8__ {TYPE_2__ rx; TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wil_ring*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wil_ring*) ; 
 void* FUNC12 (struct wil_ring*) ; 
 struct device* FUNC13 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 

__attribute__((used)) static void FUNC15(struct wil6210_priv *wil, struct wil_ring *vring)
{
	struct device *dev = FUNC13(wil);
	size_t sz = vring->size * sizeof(vring->va[0]);

	FUNC6(&wil->mutex);
	if (!vring->is_rx) {
		int vring_index = vring - wil->ring_tx;

		FUNC7(wil, "free Tx vring %d [%d] 0x%p:%pad 0x%p\n",
			     vring_index, vring->size, vring->va,
			     &vring->pa, vring->ctx);
	} else {
		FUNC7(wil, "free Rx vring [%d] 0x%p:%pad 0x%p\n",
			     vring->size, vring->va,
			     &vring->pa, vring->ctx);
	}

	while (!FUNC11(vring)) {
		dma_addr_t pa;
		u16 dmalen;
		struct wil_ctx *ctx;

		if (!vring->is_rx) {
			struct vring_tx_desc dd, *d = &dd;
			volatile struct vring_tx_desc *_d =
					&vring->va[vring->swtail].tx.legacy;

			ctx = &vring->ctx[vring->swtail];
			if (!ctx) {
				FUNC8(wil,
					     "ctx(%d) was already completed\n",
					     vring->swtail);
				vring->swtail = FUNC12(vring);
				continue;
			}
			*d = *_d;
			FUNC14(dev, (union wil_tx_desc *)d, ctx);
			if (ctx->skb)
				FUNC0(ctx->skb);
			vring->swtail = FUNC12(vring);
		} else { /* rx */
			struct vring_rx_desc dd, *d = &dd;
			volatile struct vring_rx_desc *_d =
				&vring->va[vring->swhead].rx.legacy;

			ctx = &vring->ctx[vring->swhead];
			*d = *_d;
			pa = FUNC9(&d->dma.addr);
			dmalen = FUNC5(d->dma.length);
			FUNC2(dev, pa, dmalen, DMA_FROM_DEVICE);
			FUNC4(ctx->skb);
			FUNC10(vring, 1);
		}
	}
	FUNC1(dev, sz, (void *)vring->va, vring->pa);
	FUNC3(vring->ctx);
	vring->pa = 0;
	vring->va = NULL;
	vring->ctx = NULL;
}