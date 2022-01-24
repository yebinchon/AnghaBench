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
struct wil_ring_tx_data {int dot1x_open; int /*<<< orphan*/  lock; scalar_t__ enabled; int /*<<< orphan*/  mid; } ;
struct wil_ring {int /*<<< orphan*/  va; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ring_fini_tx ) (struct wil6210_priv*,struct wil_ring*) ;} ;
struct wil6210_priv {TYPE_1__ txrx_ops; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,struct wil_ring*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  wil_status_napi_en ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct wil6210_priv *wil, int id)
{
	struct wil_ring *ring = &wil->ring_tx[id];
	struct wil_ring_tx_data *txdata = &wil->ring_tx_data[id];

	FUNC0(&wil->mutex);

	if (!ring->va)
		return;

	FUNC6(wil, "vring_fini_tx: id=%d\n", id);

	FUNC2(&txdata->lock);
	txdata->dot1x_open = false;
	txdata->mid = U8_MAX;
	txdata->enabled = 0; /* no Tx can be in progress or start anew */
	FUNC3(&txdata->lock);
	/* napi_synchronize waits for completion of the current NAPI but will
	 * not prevent the next NAPI run.
	 * Add a memory barrier to guarantee that txdata->enabled is zeroed
	 * before napi_synchronize so that the next scheduled NAPI will not
	 * handle this vring
	 */
	FUNC7();
	/* make sure NAPI won't touch this vring */
	if (FUNC5(wil_status_napi_en, wil->status))
		FUNC1(&wil->napi_tx);

	wil->txrx_ops.ring_fini_tx(wil, ring);
}