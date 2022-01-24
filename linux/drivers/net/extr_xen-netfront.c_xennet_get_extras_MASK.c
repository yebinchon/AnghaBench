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
struct xen_netif_extra_info {int flags; int type; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ rsp_cons; } ;
struct netfront_queue {TYPE_3__ rx; TYPE_2__* info; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_5__ {TYPE_1__* netdev; } ;
struct TYPE_4__ {struct device dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EBADR ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__) ; 
 int XEN_NETIF_EXTRA_FLAG_MORE ; 
 int XEN_NETIF_EXTRA_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_netif_extra_info*,struct xen_netif_extra_info*,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_queue*,scalar_t__) ; 
 struct sk_buff* FUNC6 (struct netfront_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_queue*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct netfront_queue *queue,
			     struct xen_netif_extra_info *extras,
			     RING_IDX rp)

{
	struct xen_netif_extra_info *extra;
	struct device *dev = &queue->info->netdev->dev;
	RING_IDX cons = queue->rx.rsp_cons;
	int err = 0;

	do {
		struct sk_buff *skb;
		grant_ref_t ref;

		if (FUNC4(cons + 1 == rp)) {
			if (FUNC3())
				FUNC1(dev, "Missing extra info\n");
			err = -EBADR;
			break;
		}

		extra = (struct xen_netif_extra_info *)
			FUNC0(&queue->rx, ++cons);

		if (FUNC4(!extra->type ||
			     extra->type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
			if (FUNC3())
				FUNC1(dev, "Invalid extra type: %d\n",
					extra->type);
			err = -EINVAL;
		} else {
			FUNC2(&extras[extra->type - 1], extra,
			       sizeof(*extra));
		}

		skb = FUNC6(queue, cons);
		ref = FUNC5(queue, cons);
		FUNC7(queue, skb, ref);
	} while (extra->flags & XEN_NETIF_EXTRA_FLAG_MORE);

	queue->rx.rsp_cons = cons;
	return err;
}