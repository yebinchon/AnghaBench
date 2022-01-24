#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xen_netif_rx_response {scalar_t__ status; int flags; scalar_t__ offset; int /*<<< orphan*/  id; } ;
struct xen_netif_extra_info {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netfront_rx_info {struct xen_netif_extra_info* extras; struct xen_netif_rx_response rx; } ;
struct TYPE_6__ {scalar_t__ rsp_cons; } ;
struct netfront_queue {TYPE_3__ rx; int /*<<< orphan*/  gref_rx_head; TYPE_2__* info; } ;
struct device {int dummy; } ;
typedef  scalar_t__ grant_ref_t ;
struct TYPE_5__ {TYPE_1__* netdev; } ;
struct TYPE_4__ {struct device dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ GRANT_INVALID_REF ; 
 struct xen_netif_rx_response* FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ RX_COPY_THRESHOLD ; 
 int XEN_NETIF_NR_SLOTS_MIN ; 
 int XEN_NETRXF_extra_info ; 
 int XEN_NETRXF_more_data ; 
 scalar_t__ XEN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 unsigned long FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct netfront_queue*,struct xen_netif_extra_info*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct netfront_queue*,scalar_t__) ; 
 struct sk_buff* FUNC10 (struct netfront_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct netfront_queue*,struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct netfront_queue *queue,
				struct netfront_rx_info *rinfo, RING_IDX rp,
				struct sk_buff_head *list)
{
	struct xen_netif_rx_response *rx = &rinfo->rx;
	struct xen_netif_extra_info *extras = rinfo->extras;
	struct device *dev = &queue->info->netdev->dev;
	RING_IDX cons = queue->rx.rsp_cons;
	struct sk_buff *skb = FUNC10(queue, cons);
	grant_ref_t ref = FUNC9(queue, cons);
	int max = XEN_NETIF_NR_SLOTS_MIN + (rx->status <= RX_COPY_THRESHOLD);
	int slots = 1;
	int err = 0;
	unsigned long ret;

	if (rx->flags & XEN_NETRXF_extra_info) {
		err = FUNC8(queue, extras, rp);
		cons = queue->rx.rsp_cons;
	}

	for (;;) {
		if (FUNC7(rx->status < 0 ||
			     rx->offset + rx->status > XEN_PAGE_SIZE)) {
			if (FUNC6())
				FUNC3(dev, "rx->offset: %u, size: %d\n",
					 rx->offset, rx->status);
			FUNC11(queue, skb, ref);
			err = -EINVAL;
			goto next;
		}

		/*
		 * This definitely indicates a bug, either in this driver or in
		 * the backend driver. In future this should flag the bad
		 * situation to the system controller to reboot the backend.
		 */
		if (ref == GRANT_INVALID_REF) {
			if (FUNC6())
				FUNC3(dev, "Bad rx response id %d.\n",
					 rx->id);
			err = -EINVAL;
			goto next;
		}

		ret = FUNC4(ref, 0);
		FUNC0(!ret);

		FUNC5(&queue->gref_rx_head, ref);

		FUNC2(list, skb);

next:
		if (!(rx->flags & XEN_NETRXF_more_data))
			break;

		if (cons + slots == rp) {
			if (FUNC6())
				FUNC3(dev, "Need more slots\n");
			err = -ENOENT;
			break;
		}

		rx = FUNC1(&queue->rx, cons + slots);
		skb = FUNC10(queue, cons + slots);
		ref = FUNC9(queue, cons + slots);
		slots++;
	}

	if (FUNC7(slots > max)) {
		if (FUNC6())
			FUNC3(dev, "Too many slots\n");
		err = -E2BIG;
	}

	if (FUNC7(err))
		queue->rx.rsp_cons = cons + slots;

	return err;
}