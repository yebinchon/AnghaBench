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
struct wil_ring {int size; } ;
struct wil6210_vif {int /*<<< orphan*/  privacy; } ;
struct wil6210_priv {int** ring2cid_tid; int max_assoc_sta; int /*<<< orphan*/  tx_sring_idx; int /*<<< orphan*/  mutex; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;

/* Variables and functions */
 scalar_t__ agg_wsize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wil6210_priv* FUNC3 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*) ; 
 int FUNC7 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct wil_ring_tx_data*) ; 
 int FUNC10 (struct wil6210_vif*,int,int,int) ; 

__attribute__((used)) static int FUNC11(struct wil6210_vif *vif, int ring_id,
				 int size, int cid, int tid)
{
	struct wil6210_priv *wil = FUNC3(vif);
	int rc;
	struct wil_ring *ring = &wil->ring_tx[ring_id];
	struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ring_id];

	FUNC0(&wil->mutex);

	FUNC5(wil,
		     "init TX ring: ring_id=%u, cid=%u, tid=%u, sring_id=%u\n",
		     ring_id, cid, tid, wil->tx_sring_idx);

	FUNC9(txdata);
	ring->size = size;
	rc = FUNC7(wil, ring);
	if (rc)
		goto out;

	wil->ring2cid_tid[ring_id][0] = cid;
	wil->ring2cid_tid[ring_id][1] = tid;
	if (!vif->privacy)
		txdata->dot1x_open = true;

	rc = FUNC10(vif, ring_id, cid, tid);
	if (rc) {
		FUNC6(wil, "WMI_TX_DESC_RING_ADD_CMD failed\n");
		goto out_free;
	}

	if (txdata->dot1x_open && agg_wsize >= 0)
		FUNC4(wil, ring_id, agg_wsize);

	return 0;
 out_free:
	FUNC1(&txdata->lock);
	txdata->dot1x_open = false;
	txdata->enabled = 0;
	FUNC2(&txdata->lock);
	FUNC8(wil, ring);
	wil->ring2cid_tid[ring_id][0] = wil->max_assoc_sta;
	wil->ring2cid_tid[ring_id][1] = 0;

 out:
	return rc;
}