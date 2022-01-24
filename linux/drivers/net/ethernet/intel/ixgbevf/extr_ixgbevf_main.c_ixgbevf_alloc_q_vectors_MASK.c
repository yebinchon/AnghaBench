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
struct ixgbevf_adapter {int num_msix_vectors; int num_rx_queues; int num_tx_queues; int num_xdp_queues; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int NON_Q_VECTORS ; 
 int FUNC1 (struct ixgbevf_adapter*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*,int) ; 

__attribute__((used)) static int FUNC3(struct ixgbevf_adapter *adapter)
{
	int q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;
	int rxr_remaining = adapter->num_rx_queues;
	int txr_remaining = adapter->num_tx_queues;
	int xdp_remaining = adapter->num_xdp_queues;
	int rxr_idx = 0, txr_idx = 0, xdp_idx = 0, v_idx = 0;
	int err;

	if (q_vectors >= (rxr_remaining + txr_remaining + xdp_remaining)) {
		for (; rxr_remaining; v_idx++, q_vectors--) {
			int rqpv = FUNC0(rxr_remaining, q_vectors);

			err = FUNC1(adapter, v_idx,
						     0, 0, 0, 0, rqpv, rxr_idx);
			if (err)
				goto err_out;

			/* update counts and index */
			rxr_remaining -= rqpv;
			rxr_idx += rqpv;
		}
	}

	for (; q_vectors; v_idx++, q_vectors--) {
		int rqpv = FUNC0(rxr_remaining, q_vectors);
		int tqpv = FUNC0(txr_remaining, q_vectors);
		int xqpv = FUNC0(xdp_remaining, q_vectors);

		err = FUNC1(adapter, v_idx,
					     tqpv, txr_idx,
					     xqpv, xdp_idx,
					     rqpv, rxr_idx);

		if (err)
			goto err_out;

		/* update counts and index */
		rxr_remaining -= rqpv;
		rxr_idx += rqpv;
		txr_remaining -= tqpv;
		txr_idx += tqpv;
		xdp_remaining -= xqpv;
		xdp_idx += xqpv;
	}

	return 0;

err_out:
	while (v_idx) {
		v_idx--;
		FUNC2(adapter, v_idx);
	}

	return -ENOMEM;
}