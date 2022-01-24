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
struct ethtool_channels {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpsw_rx_handler ; 
 int FUNC0 (struct net_device*,struct ethtool_channels*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct net_device *ndev,
			     struct ethtool_channels *chs)
{
	return FUNC0(ndev, chs, cpsw_rx_handler);
}