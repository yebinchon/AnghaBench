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
typedef  int u_int ;
struct TYPE_2__ {int collisions; short tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct dev_priv {int txtail; int txhead; int txhdr; } ;

/* Variables and functions */
 int TMD_ERR ; 
 int TMD_OWN ; 
 int TST_LCAR ; 
 int TST_LCOL ; 
 int TST_RTRY ; 
 int TST_UFLO ; 
 int TX_BUFFERS ; 
 void* FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct dev_priv *priv)
{
	do {
		short len;
		u_int hdraddr;
		u_int status;

		hdraddr = priv->txhdr + (priv->txtail << 3);
		status = FUNC0 (dev, hdraddr + 2);
		if (status & TMD_OWN)
			break;

		priv->txtail ++;
		if (priv->txtail >= TX_BUFFERS)
			priv->txtail = 0;

		if (status & TMD_ERR) {
			u_int status2;

			dev->stats.tx_errors++;

			status2 = FUNC0 (dev, hdraddr + 6);

			/*
			 * Clear the error byte
			 */
			FUNC1 (dev, hdraddr + 6, 0);

			if (status2 & TST_RTRY)
				dev->stats.collisions += 16;
			if (status2 & TST_LCOL)
				dev->stats.tx_window_errors++;
			if (status2 & TST_LCAR)
				dev->stats.tx_carrier_errors++;
			if (status2 & TST_UFLO)
				dev->stats.tx_fifo_errors++;
			continue;
		}
		dev->stats.tx_packets++;
		len = FUNC0 (dev, hdraddr + 4);
		dev->stats.tx_bytes += -len;
	} while (priv->txtail != priv->txhead);

	FUNC2(dev);
}