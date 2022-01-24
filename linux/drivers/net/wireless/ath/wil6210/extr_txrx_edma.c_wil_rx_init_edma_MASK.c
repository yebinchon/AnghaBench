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
typedef  int uint ;
typedef  int u16 ;
struct wil_rx_status_extended {int dummy; } ;
struct wil_rx_status_compressed {int dummy; } ;
struct wil_ring {int dummy; } ;
struct wil6210_priv {int rx_status_ring_order; int rx_buff_id_count; int num_rx_status_rings; int /*<<< orphan*/ * srings; int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  use_rx_hw_reordering; scalar_t__ use_compressed_rx_status; struct wil_ring ring_rx; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int WIL6210_MAX_STATUS_RINGS ; 
 int /*<<< orphan*/  WIL_DEFAULT_RX_STATUS_RING_ID ; 
 int WIL_RX_SRING_SIZE_ORDER_DEFAULT ; 
 int WIL_SRING_SIZE_ORDER_MAX ; 
 int WIL_SRING_SIZE_ORDER_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int FUNC2 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int,int,int) ; 
 int FUNC5 (struct wil6210_priv*,int) ; 
 int FUNC6 (struct wil6210_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wil6210_priv*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*) ; 
 int FUNC10 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct wil6210_priv *wil, uint desc_ring_order)
{
	u16 status_ring_size, desc_ring_size = 1 << desc_ring_order;
	struct wil_ring *ring = &wil->ring_rx;
	int rc;
	size_t elem_size = wil->use_compressed_rx_status ?
		sizeof(struct wil_rx_status_compressed) :
		sizeof(struct wil_rx_status_extended);
	int i;

	/* In SW reorder one must use extended status messages */
	if (wil->use_compressed_rx_status && !wil->use_rx_hw_reordering) {
		FUNC1(wil,
			"compressed RX status cannot be used with SW reorder\n");
		return -EINVAL;
	}
	if (wil->rx_status_ring_order <= desc_ring_order)
		/* make sure sring is larger than desc ring */
		wil->rx_status_ring_order = desc_ring_order + 1;
	if (wil->rx_buff_id_count <= desc_ring_size)
		/* make sure we will not run out of buff_ids */
		wil->rx_buff_id_count = desc_ring_size + 512;
	if (wil->rx_status_ring_order < WIL_SRING_SIZE_ORDER_MIN ||
	    wil->rx_status_ring_order > WIL_SRING_SIZE_ORDER_MAX)
		wil->rx_status_ring_order = WIL_RX_SRING_SIZE_ORDER_DEFAULT;

	status_ring_size = 1 << wil->rx_status_ring_order;

	FUNC0(wil,
		     "rx_init, desc_ring_size=%u, status_ring_size=%u, elem_size=%zu\n",
		     desc_ring_size, status_ring_size, elem_size);

	FUNC9(wil);

	/* Use debugfs dbg_num_rx_srings if set, reserve one sring for TX */
	if (wil->num_rx_status_rings > WIL6210_MAX_STATUS_RINGS - 1)
		wil->num_rx_status_rings = WIL6210_MAX_STATUS_RINGS - 1;

	FUNC0(wil, "rx_init: allocate %d status rings\n",
		     wil->num_rx_status_rings);

	rc = FUNC12(wil, wil->rx_buf_len);
	if (rc)
		return rc;

	/* Allocate status ring */
	for (i = 0; i < wil->num_rx_status_rings; i++) {
		int sring_id = FUNC2(wil);

		if (sring_id < 0) {
			rc = -EFAULT;
			goto err_free_status;
		}
		rc = FUNC7(wil, status_ring_size, elem_size,
				       sring_id);
		if (rc)
			goto err_free_status;
	}

	/* Allocate descriptor ring */
	rc = FUNC6(wil, desc_ring_size,
				   WIL_DEFAULT_RX_STATUS_RING_ID);
	if (rc)
		goto err_free_status;

	if (wil->rx_buff_id_count >= status_ring_size) {
		FUNC4(wil,
			 "rx_buff_id_count %d exceeds sring_size %d. set it to %d\n",
			 wil->rx_buff_id_count, status_ring_size,
			 status_ring_size - 1);
		wil->rx_buff_id_count = status_ring_size - 1;
	}

	/* Allocate Rx buffer array */
	rc = FUNC5(wil, wil->rx_buff_id_count);
	if (rc)
		goto err_free_desc;

	/* Fill descriptor ring with credits */
	rc = FUNC10(wil);
	if (rc)
		goto err_free_rx_buff_arr;

	return 0;
err_free_rx_buff_arr:
	FUNC3(wil);
err_free_desc:
	FUNC8(wil, ring);
err_free_status:
	for (i = 0; i < wil->num_rx_status_rings; i++)
		FUNC11(wil, &wil->srings[i]);

	return rc;
}