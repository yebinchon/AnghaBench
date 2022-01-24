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
struct queue_port_stats {int dummy; } ;
struct port_stats {int dummy; } ;
struct port_info {scalar_t__ port_id; int /*<<< orphan*/  stats_base; int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct lb_port_stats {int /*<<< orphan*/  octets; } ;
struct ethtool_stats {int dummy; } ;
struct adapter_stats {int dummy; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct adapter_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct port_info*,struct queue_port_stats*) ; 
 int /*<<< orphan*/  loopback_stats_strings ; 
 int /*<<< orphan*/  FUNC3 (struct lb_port_stats*,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__,struct lb_port_stats*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,struct port_stats*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct ethtool_stats *stats,
		      u64 *data)
{
	struct port_info *pi = FUNC4(dev);
	struct adapter *adapter = pi->adapter;
	struct lb_port_stats s;
	int i;
	u64 *p0;

	FUNC6(adapter, pi->tx_chan,
				 (struct port_stats *)data,
				 &pi->stats_base);

	data += sizeof(struct port_stats) / sizeof(u64);
	FUNC2(adapter, pi, (struct queue_port_stats *)data);
	data += sizeof(struct queue_port_stats) / sizeof(u64);
	FUNC1(adapter, (struct adapter_stats *)data);
	data += sizeof(struct adapter_stats) / sizeof(u64);

	*data++ = (u64)pi->port_id;
	FUNC3(&s, 0, sizeof(s));
	FUNC5(adapter, pi->port_id, &s);

	p0 = &s.octets;
	for (i = 0; i < FUNC0(loopback_stats_strings) - 1; i++)
		*data++ = (unsigned long long)*p0++;
}