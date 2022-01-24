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
struct ethtool_wolinfo {int wolopts; } ;
struct dmfe_board_info {int wol_mode; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int WAKE_ARP ; 
 int WAKE_BCAST ; 
 int WAKE_MAGICSECURE ; 
 int WAKE_MCAST ; 
 int WAKE_UCAST ; 
 struct dmfe_board_info* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
				struct ethtool_wolinfo *wolinfo)
{
	struct dmfe_board_info *db = FUNC0(dev);

	if (wolinfo->wolopts & (WAKE_UCAST | WAKE_MCAST | WAKE_BCAST |
		   		WAKE_ARP | WAKE_MAGICSECURE))
		   return -EOPNOTSUPP;

	db->wol_mode = wolinfo->wolopts;
	return 0;
}