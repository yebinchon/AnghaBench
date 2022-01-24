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
typedef  unsigned long u8 ;
struct net_device_stats {unsigned long rx_errors; unsigned long rx_over_errors; unsigned long rx_frame_errors; unsigned long rx_crc_errors; unsigned long rx_missed_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_MISS ; 
 int /*<<< orphan*/  R_RXERR ; 
 unsigned long FUNC0 (struct arc_emac_priv*,int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC1(ndev);
	struct net_device_stats *stats = &ndev->stats;
	unsigned long miss, rxerr;
	u8 rxcrc, rxfram, rxoflow;

	rxerr = FUNC0(priv, R_RXERR);
	miss = FUNC0(priv, R_MISS);

	rxcrc = rxerr;
	rxfram = rxerr >> 8;
	rxoflow = rxerr >> 16;

	stats->rx_errors += miss;
	stats->rx_errors += rxcrc + rxfram + rxoflow;

	stats->rx_over_errors += rxoflow;
	stats->rx_frame_errors += rxfram;
	stats->rx_crc_errors += rxcrc;
	stats->rx_missed_errors += miss;

	return stats;
}