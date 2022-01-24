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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device_ops {scalar_t__ (* ndo_select_queue ) (struct net_device*,struct sk_buff*,struct net_device*) ;} ;
struct net_device_context {int /*<<< orphan*/  vf_netdev; } ;
struct net_device {scalar_t__ real_num_tx_queues; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ slave_dev_queue_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*,struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct net_device*,struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static u16 FUNC9(struct net_device *ndev, struct sk_buff *skb,
			       struct net_device *sb_dev)
{
	struct net_device_context *ndc = FUNC1(ndev);
	struct net_device *vf_netdev;
	u16 txq;

	FUNC5();
	vf_netdev = FUNC4(ndc->vf_netdev);
	if (vf_netdev) {
		const struct net_device_ops *vf_ops = vf_netdev->netdev_ops;

		if (vf_ops->ndo_select_queue)
			txq = vf_ops->ndo_select_queue(vf_netdev, skb, sb_dev);
		else
			txq = FUNC0(vf_netdev, skb, NULL);

		/* Record the queue selected by VF so that it can be
		 * used for common case where VF has more queues than
		 * the synthetic device.
		 */
		FUNC3(skb)->slave_dev_queue_mapping = txq;
	} else {
		txq = FUNC2(ndev, skb);
	}
	FUNC6();

	while (FUNC8(txq >= ndev->real_num_tx_queues))
		txq -= ndev->real_num_tx_queues;

	return txq;
}