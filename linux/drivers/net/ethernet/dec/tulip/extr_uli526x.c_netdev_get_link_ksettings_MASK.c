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
struct uli526x_board_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uli526x_board_info*,struct ethtool_link_ksettings*) ; 
 struct uli526x_board_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
				     struct ethtool_link_ksettings *cmd)
{
	struct uli526x_board_info *np = FUNC1(dev);

	FUNC0(np, cmd);

	return 0;
}