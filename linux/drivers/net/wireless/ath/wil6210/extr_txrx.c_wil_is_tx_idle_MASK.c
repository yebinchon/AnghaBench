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
struct wil_ring_tx_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  enabled; } ;
struct wil_ring {int /*<<< orphan*/  va; } ;
struct wil6210_priv {int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  status; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;

/* Variables and functions */
 int WIL6210_MAX_TX_RINGS ; 
 int /*<<< orphan*/  WIL_DATA_COMPLETION_TO_MS ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*) ; 
 int FUNC9 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct wil_ring*) ; 
 int /*<<< orphan*/  wil_status_napi_en ; 

bool FUNC11(struct wil6210_priv *wil)
{
	int i;
	unsigned long data_comp_to;
	int min_ring_id = FUNC9(wil);

	for (i = min_ring_id; i < WIL6210_MAX_TX_RINGS; i++) {
		struct wil_ring *vring = &wil->ring_tx[i];
		int vring_index = vring - wil->ring_tx;
		struct wil_ring_tx_data *txdata =
			&wil->ring_tx_data[vring_index];

		FUNC3(&txdata->lock);

		if (!vring->va || !txdata->enabled) {
			FUNC4(&txdata->lock);
			continue;
		}

		data_comp_to = jiffies + FUNC0(
					WIL_DATA_COMPLETION_TO_MS);
		if (FUNC5(wil_status_napi_en, wil->status)) {
			while (!FUNC10(vring)) {
				if (FUNC6(jiffies, data_comp_to)) {
					FUNC7(wil,
						   "TO waiting for idle tx\n");
					FUNC4(&txdata->lock);
					return false;
				}
				FUNC8(wil,
						    "tx vring is not empty -> NAPI\n");
				FUNC4(&txdata->lock);
				FUNC2(&wil->napi_tx);
				FUNC1(20);
				FUNC3(&txdata->lock);
				if (!vring->va || !txdata->enabled)
					break;
			}
		}

		FUNC4(&txdata->lock);
	}

	return true;
}