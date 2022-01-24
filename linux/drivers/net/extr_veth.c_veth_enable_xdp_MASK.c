#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mem; } ;
struct veth_rq {TYPE_1__ xdp_rxq; int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  xdp_mem; } ;
struct veth_priv {struct veth_rq* rq; int /*<<< orphan*/  _xdp_prog; } ;
struct net_device {int real_num_rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_TYPE_PAGE_SHARED ; 
 struct veth_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,struct net_device*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct veth_priv *priv = FUNC0(dev);
	int err, i;

	if (!FUNC3(&priv->rq[0].xdp_rxq)) {
		for (i = 0; i < dev->real_num_rx_queues; i++) {
			struct veth_rq *rq = &priv->rq[i];

			err = FUNC4(&rq->xdp_rxq, dev, i);
			if (err < 0)
				goto err_rxq_reg;

			err = FUNC5(&rq->xdp_rxq,
							 MEM_TYPE_PAGE_SHARED,
							 NULL);
			if (err < 0)
				goto err_reg_mem;

			/* Save original mem info as it can be overwritten */
			rq->xdp_mem = rq->xdp_rxq.mem;
		}

		err = FUNC2(dev);
		if (err)
			goto err_rxq_reg;
	}

	for (i = 0; i < dev->real_num_rx_queues; i++)
		FUNC1(priv->rq[i].xdp_prog, priv->_xdp_prog);

	return 0;
err_reg_mem:
	FUNC6(&priv->rq[i].xdp_rxq);
err_rxq_reg:
	for (i--; i >= 0; i--)
		FUNC6(&priv->rq[i].xdp_rxq);

	return err;
}