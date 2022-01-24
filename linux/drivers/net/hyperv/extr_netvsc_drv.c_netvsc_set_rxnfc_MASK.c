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
struct net_device_context {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {scalar_t__ cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ ETHTOOL_SRXFH ; 
 struct net_device_context* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device_context*,struct ethtool_rxnfc*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *ndev, struct ethtool_rxnfc *info)
{
	struct net_device_context *ndc = FUNC0(ndev);

	if (info->cmd == ETHTOOL_SRXFH)
		return FUNC1(ndc, info);

	return -EOPNOTSUPP;
}