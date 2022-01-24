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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int num_tqps; int /*<<< orphan*/  int_rl_setting; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_coalesce_usecs_high; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct net_device*,struct ethtool_coalesce*) ; 
 struct hnae3_handle* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct ethtool_coalesce*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			     struct ethtool_coalesce *cmd)
{
	struct hnae3_handle *h = FUNC1(netdev);
	u16 queue_num = h->kinfo.num_tqps;
	int ret;
	int i;

	if (FUNC2(netdev))
		return -EBUSY;

	ret = FUNC0(netdev, cmd);
	if (ret)
		return ret;

	h->kinfo.int_rl_setting =
		FUNC3(cmd->rx_coalesce_usecs_high);

	for (i = 0; i < queue_num; i++)
		FUNC4(netdev, cmd, i);

	return 0;
}