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
struct net_device {int dummy; } ;
struct macb {TYPE_1__* ptp_info; } ;
struct ethtool_ts_info {int dummy; } ;
struct TYPE_2__ {int (* get_ts_info ) (struct net_device*,struct ethtool_ts_info*) ;} ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct ethtool_ts_info*) ; 
 struct macb* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct ethtool_ts_info*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			    struct ethtool_ts_info *info)
{
	struct macb *bp = FUNC1(netdev);

	if (bp->ptp_info)
		return bp->ptp_info->get_ts_info(netdev, info);

	return FUNC0(netdev, info);
}