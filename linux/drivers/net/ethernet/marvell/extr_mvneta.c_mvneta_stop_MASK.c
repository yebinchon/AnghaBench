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
struct net_device {int /*<<< orphan*/  irq; } ;
struct mvneta_port {int is_stopped; int /*<<< orphan*/  ports; int /*<<< orphan*/  node_dead; int /*<<< orphan*/  node_online; int /*<<< orphan*/  lock; int /*<<< orphan*/  neta_armada3700; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_NET_MVNETA_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*) ; 
 int /*<<< orphan*/  mvneta_percpu_disable ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_port*) ; 
 struct mvneta_port* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mvneta_port*,int) ; 
 int /*<<< orphan*/  online_hpstate ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct mvneta_port *pp = FUNC7(dev);

	if (!pp->neta_armada3700) {
		/* Inform that we are stopping so we don't want to setup the
		 * driver for new CPUs in the notifiers. The code of the
		 * notifier for CPU online is protected by the same spinlock,
		 * so when we get the lock, the notifer work is done.
		 */
		FUNC9(&pp->lock);
		pp->is_stopped = true;
		FUNC10(&pp->lock);

		FUNC6(pp);
		FUNC5(pp);

		FUNC0(online_hpstate,
						    &pp->node_online);
		FUNC0(CPUHP_NET_MVNETA_DEAD,
						    &pp->node_dead);
		FUNC8(mvneta_percpu_disable, pp, true);
		FUNC2(dev->irq, pp->ports);
	} else {
		FUNC6(pp);
		FUNC5(pp);
		FUNC1(dev->irq, pp);
	}

	FUNC3(pp);
	FUNC4(pp);

	return 0;
}