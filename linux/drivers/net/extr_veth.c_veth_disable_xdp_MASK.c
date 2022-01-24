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
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;
struct veth_rq {TYPE_1__ xdp_rxq; int /*<<< orphan*/  xdp_mem; int /*<<< orphan*/  xdp_prog; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;

/* Variables and functions */
 struct veth_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct veth_priv *priv = FUNC0(dev);
	int i;

	for (i = 0; i < dev->real_num_rx_queues; i++)
		FUNC1(priv->rq[i].xdp_prog, NULL);
	FUNC2(dev);
	for (i = 0; i < dev->real_num_rx_queues; i++) {
		struct veth_rq *rq = &priv->rq[i];

		rq->xdp_rxq.mem = rq->xdp_mem;
		FUNC3(&rq->xdp_rxq);
	}
}