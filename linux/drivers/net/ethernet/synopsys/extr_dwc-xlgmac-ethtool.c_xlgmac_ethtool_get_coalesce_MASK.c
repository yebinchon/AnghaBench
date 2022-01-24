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
struct xlgmac_pdata {int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  rx_usecs; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  tx_max_coalesced_frames; int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ethtool_coalesce*,int /*<<< orphan*/ ,int) ; 
 struct xlgmac_pdata* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				       struct ethtool_coalesce *ec)
{
	struct xlgmac_pdata *pdata = FUNC1(netdev);

	FUNC0(ec, 0, sizeof(struct ethtool_coalesce));
	ec->rx_coalesce_usecs = pdata->rx_usecs;
	ec->rx_max_coalesced_frames = pdata->rx_frames;
	ec->tx_max_coalesced_frames = pdata->tx_frames;

	return 0;
}