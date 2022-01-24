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
struct tlan_priv {scalar_t__ tx_list; scalar_t__ rx_list; int /*<<< orphan*/  tx_busy_count; int /*<<< orphan*/  rx_eoc_count; } ;
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLAN_DEBUG_GNRL ; 
 int TLAN_DEBUG_LIST ; 
 int /*<<< orphan*/  TLAN_DEBUG_RX ; 
 int /*<<< orphan*/  TLAN_DEBUG_TX ; 
 int TLAN_NUM_RX_LISTS ; 
 int TLAN_NUM_TX_LISTS ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int debug ; 
 struct tlan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device_stats *FUNC6(struct net_device *dev)
{
	struct tlan_priv	*priv = FUNC1(dev);
	int i;

	/* Should only read stats if open ? */
	FUNC5(dev, TLAN_RECORD);

	FUNC0(TLAN_DEBUG_RX, "RECEIVE:  %s EOC count = %d\n", dev->name,
		 priv->rx_eoc_count);
	FUNC0(TLAN_DEBUG_TX, "TRANSMIT:  %s Busy count = %d\n", dev->name,
		 priv->tx_busy_count);
	if (debug & TLAN_DEBUG_GNRL) {
		FUNC3(dev->base_addr);
		FUNC2(dev);
	}
	if (debug & TLAN_DEBUG_LIST) {
		for (i = 0; i < TLAN_NUM_RX_LISTS; i++)
			FUNC4(priv->rx_list + i, "RX", i);
		for (i = 0; i < TLAN_NUM_TX_LISTS; i++)
			FUNC4(priv->tx_list + i, "TX", i);
	}

	return &dev->stats;

}