#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ena_adapter {int requested_tx_ring_size; int requested_rx_ring_size; int /*<<< orphan*/  netdev; TYPE_2__* rx_ring; TYPE_1__* tx_ring; } ;
struct TYPE_4__ {int ring_size; } ;
struct TYPE_3__ {int ring_size; } ;

/* Variables and functions */
 int ENA_MIN_RING_SIZE ; 
 int ENOMEM ; 
 int FUNC0 (struct ena_adapter*) ; 
 int FUNC1 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*) ; 
 int FUNC5 (struct ena_adapter*) ; 
 int FUNC6 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*,int,int) ; 

__attribute__((used)) static int FUNC9(struct ena_adapter *adapter)
{
	int rc, cur_rx_ring_size, cur_tx_ring_size;
	int new_rx_ring_size, new_tx_ring_size;

	/* current queue sizes might be set to smaller than the requested
	 * ones due to past queue allocation failures.
	 */
	FUNC8(adapter, adapter->requested_tx_ring_size,
			  adapter->requested_rx_ring_size);

	while (1) {
		rc = FUNC6(adapter);
		if (rc)
			goto err_setup_tx;

		rc = FUNC1(adapter);
		if (rc)
			goto err_create_tx_queues;

		rc = FUNC5(adapter);
		if (rc)
			goto err_setup_rx;

		rc = FUNC0(adapter);
		if (rc)
			goto err_create_rx_queues;

		return 0;

err_create_rx_queues:
		FUNC3(adapter);
err_setup_rx:
		FUNC2(adapter);
err_create_tx_queues:
		FUNC4(adapter);
err_setup_tx:
		if (rc != -ENOMEM) {
			FUNC7(adapter, ifup, adapter->netdev,
				  "Queue creation failed with error code %d\n",
				  rc);
			return rc;
		}

		cur_tx_ring_size = adapter->tx_ring[0].ring_size;
		cur_rx_ring_size = adapter->rx_ring[0].ring_size;

		FUNC7(adapter, ifup, adapter->netdev,
			  "Not enough memory to create queues with sizes TX=%d, RX=%d\n",
			  cur_tx_ring_size, cur_rx_ring_size);

		new_tx_ring_size = cur_tx_ring_size;
		new_rx_ring_size = cur_rx_ring_size;

		/* Decrease the size of the larger queue, or
		 * decrease both if they are the same size.
		 */
		if (cur_rx_ring_size <= cur_tx_ring_size)
			new_tx_ring_size = cur_tx_ring_size / 2;
		if (cur_rx_ring_size >= cur_tx_ring_size)
			new_rx_ring_size = cur_rx_ring_size / 2;

		if (new_tx_ring_size < ENA_MIN_RING_SIZE ||
		    new_rx_ring_size < ENA_MIN_RING_SIZE) {
			FUNC7(adapter, ifup, adapter->netdev,
				  "Queue creation failed with the smallest possible queue size of %d for both queues. Not retrying with smaller queues\n",
				  ENA_MIN_RING_SIZE);
			return rc;
		}

		FUNC7(adapter, ifup, adapter->netdev,
			  "Retrying queue creation with sizes TX=%d, RX=%d\n",
			  new_tx_ring_size,
			  new_rx_ring_size);

		FUNC8(adapter, new_tx_ring_size,
				  new_rx_ring_size);
	}
}