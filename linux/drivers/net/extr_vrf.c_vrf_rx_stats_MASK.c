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
struct pcpu_dstats {int rx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_pkts; } ;
struct net_device {int /*<<< orphan*/  dstats; } ;

/* Variables and functions */
 struct pcpu_dstats* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int len)
{
	struct pcpu_dstats *dstats = FUNC0(dev->dstats);

	FUNC1(&dstats->syncp);
	dstats->rx_pkts++;
	dstats->rx_bytes += len;
	FUNC2(&dstats->syncp);
}