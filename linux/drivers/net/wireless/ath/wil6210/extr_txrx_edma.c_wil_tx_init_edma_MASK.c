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
typedef  int u16 ;
struct wil_status_ring {int is_rx; int size; int elem_size; int desc_rdy_pol; } ;
struct wil_ring_tx_status {int dummy; } ;
struct wil6210_priv {int tx_status_ring_order; int tx_sring_idx; struct wil_status_ring* srings; } ;

/* Variables and functions */
 int WIL_SRING_SIZE_ORDER_MAX ; 
 int WIL_SRING_SIZE_ORDER_MIN ; 
 int WIL_TX_SRING_SIZE_ORDER_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*,int,int) ; 
 int FUNC1 (struct wil6210_priv*) ; 
 int FUNC2 (struct wil6210_priv*,struct wil_status_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,struct wil_status_ring*) ; 
 int FUNC4 (struct wil6210_priv*,int) ; 

__attribute__((used)) static int FUNC5(struct wil6210_priv *wil)
{
	int ring_id = FUNC1(wil);
	struct wil_status_ring *sring;
	int rc;
	u16 status_ring_size;

	if (wil->tx_status_ring_order < WIL_SRING_SIZE_ORDER_MIN ||
	    wil->tx_status_ring_order > WIL_SRING_SIZE_ORDER_MAX)
		wil->tx_status_ring_order = WIL_TX_SRING_SIZE_ORDER_DEFAULT;

	status_ring_size = 1 << wil->tx_status_ring_order;

	FUNC0(wil, "init TX sring: size=%u, ring_id=%u\n",
		     status_ring_size, ring_id);

	if (ring_id < 0)
		return ring_id;

	/* Allocate Tx status ring. Tx descriptor rings will be
	 * allocated on WMI connect event
	 */
	sring = &wil->srings[ring_id];

	sring->is_rx = false;
	sring->size = status_ring_size;
	sring->elem_size = sizeof(struct wil_ring_tx_status);
	rc = FUNC2(wil, sring);
	if (rc)
		return rc;

	rc = FUNC4(wil, ring_id);
	if (rc)
		goto out_free;

	sring->desc_rdy_pol = 1;
	wil->tx_sring_idx = ring_id;

	return 0;
out_free:
	FUNC3(wil, sring);
	return rc;
}