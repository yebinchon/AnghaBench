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
struct pcpu_sw_netstats {int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  tstats; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 struct pcpu_sw_netstats* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, int ret, int len)
{
	if (FUNC0(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
		struct pcpu_sw_netstats *stats = FUNC1(dev->tstats);

		FUNC2(&stats->syncp);
		stats->tx_packets++;
		stats->tx_bytes += len;
		FUNC3(&stats->syncp);
	}
}