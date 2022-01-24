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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct mvpp2_port {int /*<<< orphan*/  gather_stats_lock; int /*<<< orphan*/  nrxqs; int /*<<< orphan*/  ntxqs; int /*<<< orphan*/  ethtool_stats; TYPE_1__ stats_work; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mvpp2_port* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				    struct ethtool_stats *stats, u64 *data)
{
	struct mvpp2_port *port = FUNC5(dev);

	/* Update statistics for the given port, then take the lock to avoid
	 * concurrent accesses on the ethtool_stats structure during its copy.
	 */
	FUNC4(&port->stats_work.work);

	FUNC2(&port->gather_stats_lock);
	FUNC1(data, port->ethtool_stats,
	       sizeof(u64) * FUNC0(port->ntxqs, port->nrxqs));
	FUNC3(&port->gather_stats_lock);
}