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
struct xenbus_device {int dummy; } ;
struct xen_netif_tx_sring {int dummy; } ;
typedef  struct xen_netif_tx_sring xen_netif_rx_sring ;
struct TYPE_2__ {int /*<<< orphan*/ * sring; } ;
struct netfront_queue {void* tx_ring_ref; void* rx_ring_ref; TYPE_1__ rx; TYPE_1__ tx; } ;
typedef  void* grant_ref_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct xen_netif_tx_sring*,int /*<<< orphan*/ ) ; 
 int GFP_NOIO ; 
 void* GRANT_INVALID_REF ; 
 int /*<<< orphan*/  FUNC1 (struct xen_netif_tx_sring*) ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int __GFP_HIGH ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct netfront_queue*) ; 
 int FUNC6 (struct netfront_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int,char*) ; 
 int FUNC8 (struct xenbus_device*,struct xen_netif_tx_sring*,int,void**) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev,
			struct netfront_queue *queue, unsigned int feature_split_evtchn)
{
	struct xen_netif_tx_sring *txs;
	struct xen_netif_rx_sring *rxs;
	grant_ref_t gref;
	int err;

	queue->tx_ring_ref = GRANT_INVALID_REF;
	queue->rx_ring_ref = GRANT_INVALID_REF;
	queue->rx.sring = NULL;
	queue->tx.sring = NULL;

	txs = (struct xen_netif_tx_sring *)FUNC3(GFP_NOIO | __GFP_HIGH);
	if (!txs) {
		err = -ENOMEM;
		FUNC7(dev, err, "allocating tx ring page");
		goto fail;
	}
	FUNC1(txs);
	FUNC0(&queue->tx, txs, XEN_PAGE_SIZE);

	err = FUNC8(dev, txs, 1, &gref);
	if (err < 0)
		goto grant_tx_ring_fail;
	queue->tx_ring_ref = gref;

	rxs = (struct xen_netif_rx_sring *)FUNC3(GFP_NOIO | __GFP_HIGH);
	if (!rxs) {
		err = -ENOMEM;
		FUNC7(dev, err, "allocating rx ring page");
		goto alloc_rx_ring_fail;
	}
	FUNC1(rxs);
	FUNC0(&queue->rx, rxs, XEN_PAGE_SIZE);

	err = FUNC8(dev, rxs, 1, &gref);
	if (err < 0)
		goto grant_rx_ring_fail;
	queue->rx_ring_ref = gref;

	if (feature_split_evtchn)
		err = FUNC6(queue);
	/* setup single event channel if
	 *  a) feature-split-event-channels == 0
	 *  b) feature-split-event-channels == 1 but failed to setup
	 */
	if (!feature_split_evtchn || (feature_split_evtchn && err))
		err = FUNC5(queue);

	if (err)
		goto alloc_evtchn_fail;

	return 0;

	/* If we fail to setup netfront, it is safe to just revoke access to
	 * granted pages because backend is not accessing it at this point.
	 */
alloc_evtchn_fail:
	FUNC4(queue->rx_ring_ref, 0);
grant_rx_ring_fail:
	FUNC2((unsigned long)rxs);
alloc_rx_ring_fail:
	FUNC4(queue->tx_ring_ref, 0);
grant_tx_ring_fail:
	FUNC2((unsigned long)txs);
fail:
	return err;
}