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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {scalar_t__* bins; int /*<<< orphan*/  unicast; int /*<<< orphan*/  multicast; int /*<<< orphan*/  broadcast; } ;
struct de4x5_private {TYPE_1__ pktStats; } ;

/* Variables and functions */
 int DE4X5_PKT_BIN_SZ ; 
 int DE4X5_PKT_STAT_SZ ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 struct de4x5_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, char *buf, int pkt_len)
{
    struct de4x5_private *lp = FUNC4(dev);
    int i;

    for (i=1; i<DE4X5_PKT_STAT_SZ-1; i++) {
        if (pkt_len < (i*DE4X5_PKT_BIN_SZ)) {
	    lp->pktStats.bins[i]++;
	    i = DE4X5_PKT_STAT_SZ;
	}
    }
    if (FUNC2(buf)) {
        if (FUNC1(buf)) {
	    lp->pktStats.broadcast++;
	} else {
	    lp->pktStats.multicast++;
	}
    } else if (FUNC0(buf, dev->dev_addr)) {
        lp->pktStats.unicast++;
    }

    lp->pktStats.bins[0]++;       /* Duplicates stats.rx_packets */
    if (lp->pktStats.bins[0] == 0) { /* Reset counters */
        FUNC3((char *)&lp->pktStats, 0, sizeof(lp->pktStats));
    }
}