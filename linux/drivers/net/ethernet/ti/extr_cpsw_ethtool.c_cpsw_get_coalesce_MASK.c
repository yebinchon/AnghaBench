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
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_coalesce_usecs; } ;
struct cpsw_common {int /*<<< orphan*/  coal_intvl; } ;

/* Variables and functions */
 struct cpsw_common* FUNC0 (struct net_device*) ; 

int FUNC1(struct net_device *ndev, struct ethtool_coalesce *coal)
{
	struct cpsw_common *cpsw = FUNC0(ndev);

	coal->rx_coalesce_usecs = cpsw->coal_intvl;
	return 0;
}