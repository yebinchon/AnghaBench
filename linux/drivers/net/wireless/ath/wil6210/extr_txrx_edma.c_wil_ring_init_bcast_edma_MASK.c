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
struct wil_ring_tx_data {int dot1x_open; int /*<<< orphan*/  lock; scalar_t__ enabled; } ;
struct wil_ring {int size; int is_rx; } ;
struct wil6210_vif {int /*<<< orphan*/  privacy; } ;
struct wil6210_priv {scalar_t__** ring2cid_tid; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_sring_idx; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;

/* Variables and functions */
 scalar_t__ WIL6210_MAX_CID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wil6210_priv* FUNC3 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil_ring_tx_data*) ; 
 int FUNC8 (struct wil6210_vif*,int) ; 

__attribute__((used)) static int FUNC9(struct wil6210_vif *vif, int ring_id,
				    int size)
{
	struct wil6210_priv *wil = FUNC3(vif);
	struct wil_ring *ring = &wil->ring_tx[ring_id];
	int rc;
	struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ring_id];

	FUNC4(wil, "init bcast: ring_id=%d, sring_id=%d\n",
		     ring_id, wil->tx_sring_idx);

	FUNC0(&wil->mutex);

	FUNC7(txdata);
	ring->size = size;
	ring->is_rx = false;
	rc = FUNC5(wil, ring);
	if (rc)
		goto out;

	wil->ring2cid_tid[ring_id][0] = WIL6210_MAX_CID; /* CID */
	wil->ring2cid_tid[ring_id][1] = 0; /* TID */
	if (!vif->privacy)
		txdata->dot1x_open = true;

	rc = FUNC8(vif, ring_id);
	if (rc)
		goto out_free;

	return 0;

 out_free:
	FUNC1(&txdata->lock);
	txdata->enabled = 0;
	txdata->dot1x_open = false;
	FUNC2(&txdata->lock);
	FUNC6(wil, ring);

out:
	return rc;
}