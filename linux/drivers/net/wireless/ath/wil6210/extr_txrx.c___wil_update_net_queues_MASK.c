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
struct wil_ring_tx_data {scalar_t__ mid; int /*<<< orphan*/  enabled; } ;
struct wil_ring {int /*<<< orphan*/  va; } ;
struct wil6210_vif {scalar_t__ mid; int net_queue_stopped; } ;
struct wil6210_priv {struct wil_ring* ring_tx; struct wil_ring_tx_data* ring_tx_data; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int WIL6210_MAX_TX_RINGS ; 
 scalar_t__ drop_if_ring_full ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,...) ; 
 int FUNC6 (struct wil6210_priv*) ; 
 scalar_t__ FUNC7 (struct wil_ring*) ; 
 int FUNC8 (struct wil_ring*) ; 
 int /*<<< orphan*/  wil_status_suspended ; 
 int /*<<< orphan*/  wil_status_suspending ; 

__attribute__((used)) static inline void FUNC9(struct wil6210_priv *wil,
					   struct wil6210_vif *vif,
					   struct wil_ring *ring,
					   bool check_stop)
{
	int i;
	int min_ring_id = FUNC6(wil);

	if (FUNC3(!vif))
		return;

	if (ring)
		FUNC5(wil, "vring %d, mid %d, check_stop=%d, stopped=%d",
			     (int)(ring - wil->ring_tx), vif->mid, check_stop,
			     vif->net_queue_stopped);
	else
		FUNC5(wil, "check_stop=%d, mid=%d, stopped=%d",
			     check_stop, vif->mid, vif->net_queue_stopped);

	if (ring && drop_if_ring_full)
		/* no need to stop/wake net queues */
		return;

	if (check_stop == vif->net_queue_stopped)
		/* net queues already in desired state */
		return;

	if (check_stop) {
		if (!ring || FUNC3(FUNC8(ring))) {
			/* not enough room in the vring */
			FUNC0(FUNC4(vif));
			vif->net_queue_stopped = true;
			FUNC5(wil, "netif_tx_stop called\n");
		}
		return;
	}

	/* Do not wake the queues in suspend flow */
	if (FUNC2(wil_status_suspending, wil->status) ||
	    FUNC2(wil_status_suspended, wil->status))
		return;

	/* check wake */
	for (i = min_ring_id; i < WIL6210_MAX_TX_RINGS; i++) {
		struct wil_ring *cur_ring = &wil->ring_tx[i];
		struct wil_ring_tx_data  *txdata = &wil->ring_tx_data[i];

		if (txdata->mid != vif->mid || !cur_ring->va ||
		    !txdata->enabled || cur_ring == ring)
			continue;

		if (FUNC8(cur_ring)) {
			FUNC5(wil, "ring %d full, can't wake\n",
				     (int)(cur_ring - wil->ring_tx));
			return;
		}
	}

	if (!ring || FUNC7(ring)) {
		/* enough room in the ring */
		FUNC5(wil, "calling netif_tx_wake\n");
		FUNC1(FUNC4(vif));
		vif->net_queue_stopped = false;
	}
}