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
struct veth_rq {int rx_notify_masked; int /*<<< orphan*/  xdp_ring; int /*<<< orphan*/  xdp_napi; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct veth_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  veth_ptr_free ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct veth_priv *priv = FUNC2(dev);
	int i;

	for (i = 0; i < dev->real_num_rx_queues; i++) {
		struct veth_rq *rq = &priv->rq[i];

		FUNC0(&rq->xdp_napi);
		FUNC1(&rq->xdp_napi);
	}
	FUNC5();

	for (i = 0; i < dev->real_num_rx_queues; i++) {
		struct veth_rq *rq = &priv->rq[i];

		FUNC3(&rq->xdp_napi);
		rq->rx_notify_masked = false;
		FUNC4(&rq->xdp_ring, veth_ptr_free);
	}
}