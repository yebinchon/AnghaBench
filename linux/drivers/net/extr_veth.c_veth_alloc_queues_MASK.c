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
struct veth_priv {TYPE_2__* rq; } ;
struct net_device {int num_rx_queues; } ;
struct TYPE_3__ {int /*<<< orphan*/  syncp; } ;
struct TYPE_4__ {TYPE_1__ stats; struct net_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 struct veth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct veth_priv *priv = FUNC1(dev);
	int i;

	priv->rq = FUNC0(dev->num_rx_queues, sizeof(*priv->rq), GFP_KERNEL);
	if (!priv->rq)
		return -ENOMEM;

	for (i = 0; i < dev->num_rx_queues; i++) {
		priv->rq[i].dev = dev;
		FUNC2(&priv->rq[i].stats.syncp);
	}

	return 0;
}