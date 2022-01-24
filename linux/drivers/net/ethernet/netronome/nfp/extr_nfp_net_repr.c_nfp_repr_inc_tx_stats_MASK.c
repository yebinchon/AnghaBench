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
struct nfp_repr_pcpu_stats {unsigned int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct nfp_repr {TYPE_1__* stats; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_drops; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfp_repr_pcpu_stats* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct net_device *netdev, unsigned int len,
		      int tx_status)
{
	struct nfp_repr *repr = FUNC0(netdev);
	struct nfp_repr_pcpu_stats *stats;

	if (FUNC5(tx_status != NET_XMIT_SUCCESS &&
		     tx_status != NET_XMIT_CN)) {
		FUNC1(repr->stats->tx_drops);
		return;
	}

	stats = FUNC2(repr->stats);
	FUNC3(&stats->syncp);
	stats->tx_packets++;
	stats->tx_bytes += len;
	FUNC4(&stats->syncp);
}