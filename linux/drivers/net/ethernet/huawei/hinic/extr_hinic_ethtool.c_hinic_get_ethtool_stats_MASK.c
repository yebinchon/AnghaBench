#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct hinic_vport_stats {int /*<<< orphan*/  member_0; } ;
struct hinic_phy_port_stats {int dummy; } ;
struct hinic_dev {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {int offset; int size; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_dev*,int /*<<< orphan*/ *) ; 
 TYPE_1__* hinic_function_stats ; 
 int FUNC2 (struct hinic_dev*,struct hinic_phy_port_stats*) ; 
 int FUNC3 (struct hinic_dev*,struct hinic_vport_stats*) ; 
 TYPE_1__* hinic_port_stats ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_phy_port_stats*) ; 
 struct hinic_phy_port_stats* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct hinic_dev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev,
				    struct ethtool_stats *stats, u64 *data)
{
	struct hinic_dev *nic_dev = FUNC7(netdev);
	struct hinic_vport_stats vport_stats = {0};
	struct hinic_phy_port_stats *port_stats;
	u16 i = 0, j = 0;
	char *p;
	int err;

	err = FUNC3(nic_dev, &vport_stats);
	if (err)
		FUNC8(nic_dev, drv, netdev,
			  "Failed to get vport stats from firmware\n");

	for (j = 0; j < FUNC0(hinic_function_stats); j++, i++) {
		p = (char *)&vport_stats + hinic_function_stats[j].offset;
		data[i] = (hinic_function_stats[j].size ==
				sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
	}

	port_stats = FUNC5(sizeof(*port_stats), GFP_KERNEL);
	if (!port_stats) {
		FUNC6(&data[i], 0,
		       FUNC0(hinic_port_stats) * sizeof(*data));
		i += FUNC0(hinic_port_stats);
		goto get_drv_stats;
	}

	err = FUNC2(nic_dev, port_stats);
	if (err)
		FUNC8(nic_dev, drv, netdev,
			  "Failed to get port stats from firmware\n");

	for (j = 0; j < FUNC0(hinic_port_stats); j++, i++) {
		p = (char *)port_stats + hinic_port_stats[j].offset;
		data[i] = (hinic_port_stats[j].size ==
				sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
	}

	FUNC4(port_stats);

get_drv_stats:
	FUNC1(nic_dev, data + i);
}