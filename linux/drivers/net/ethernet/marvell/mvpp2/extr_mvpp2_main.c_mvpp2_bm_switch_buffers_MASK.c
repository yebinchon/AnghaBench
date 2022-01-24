#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_port {int nrxqs; TYPE_2__* dev; } ;
struct mvpp2 {int port_count; int percpu_pools; struct mvpp2_port** port_list; int /*<<< orphan*/ * bm_pools; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int MVPP2_BM_POOLS_NUM ; 
 int MVPP2_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mvpp2*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mvpp2*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct mvpp2 *priv, bool percpu)
{
	int numbufs = MVPP2_BM_POOLS_NUM, i;
	struct mvpp2_port *port = NULL;
	bool status[MVPP2_MAX_PORTS];

	for (i = 0; i < priv->port_count; i++) {
		port = priv->port_list[i];
		status[i] = FUNC6(port->dev);
		if (status[i])
			FUNC4(port->dev);
	}

	/* nrxqs is the same for all ports */
	if (priv->percpu_pools)
		numbufs = port->nrxqs * 2;

	for (i = 0; i < numbufs; i++)
		FUNC2(port->dev->dev.parent, priv, &priv->bm_pools[i]);

	FUNC0(port->dev->dev.parent, priv->bm_pools);
	priv->percpu_pools = percpu;
	FUNC1(port->dev->dev.parent, priv);

	for (i = 0; i < priv->port_count; i++) {
		port = priv->port_list[i];
		FUNC5(port);
		if (status[i])
			FUNC3(port->dev);
	}

	return 0;
}