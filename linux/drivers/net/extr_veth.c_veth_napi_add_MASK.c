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
struct veth_rq {int /*<<< orphan*/  xdp_ring; int /*<<< orphan*/  xdp_napi; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  VETH_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct veth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  veth_poll ; 
 int /*<<< orphan*/  veth_ptr_free ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct veth_priv *priv = FUNC1(dev);
	int err, i;

	for (i = 0; i < dev->real_num_rx_queues; i++) {
		struct veth_rq *rq = &priv->rq[i];

		err = FUNC4(&rq->xdp_ring, VETH_RING_SIZE, GFP_KERNEL);
		if (err)
			goto err_xdp_ring;
	}

	for (i = 0; i < dev->real_num_rx_queues; i++) {
		struct veth_rq *rq = &priv->rq[i];

		FUNC2(dev, &rq->xdp_napi, veth_poll, NAPI_POLL_WEIGHT);
		FUNC0(&rq->xdp_napi);
	}

	return 0;
err_xdp_ring:
	for (i--; i >= 0; i--)
		FUNC3(&priv->rq[i].xdp_ring, veth_ptr_free);

	return err;
}