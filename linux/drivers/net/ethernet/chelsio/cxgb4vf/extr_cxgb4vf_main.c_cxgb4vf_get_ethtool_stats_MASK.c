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
typedef  int /*<<< orphan*/  u64 ;
struct t4vf_port_stats {int dummy; } ;
struct queue_port_stats {int dummy; } ;
struct port_info {int /*<<< orphan*/  pidx; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct port_info*,struct queue_port_stats*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,struct t4vf_port_stats*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				      struct ethtool_stats *stats,
				      u64 *data)
{
	struct port_info *pi = FUNC2(dev);
	struct adapter *adapter = pi->adapter;
	int err = FUNC3(adapter, pi->pidx,
				      (struct t4vf_port_stats *)data);
	if (err)
		FUNC1(data, 0, sizeof(struct t4vf_port_stats));

	data += sizeof(struct t4vf_port_stats) / sizeof(u64);
	FUNC0(adapter, pi, (struct queue_port_stats *)data);
}