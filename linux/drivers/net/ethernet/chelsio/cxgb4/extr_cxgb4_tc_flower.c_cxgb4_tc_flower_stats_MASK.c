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
typedef  scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct flow_cls_offload {int /*<<< orphan*/  stats; int /*<<< orphan*/  cookie; } ;
struct ch_tc_flower_stats {scalar_t__ packet_count; scalar_t__ prev_packet_count; scalar_t__ byte_count; int /*<<< orphan*/  last_used; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct ch_tc_flower_entry {int /*<<< orphan*/  lock; struct ch_tc_flower_stats stats; TYPE_1__ fs; int /*<<< orphan*/  filter_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ch_tc_flower_entry* FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev,
			  struct flow_cls_offload *cls)
{
	struct adapter *adap = FUNC3(dev);
	struct ch_tc_flower_stats *ofld_stats;
	struct ch_tc_flower_entry *ch_flower;
	u64 packets;
	u64 bytes;
	int ret;

	ch_flower = FUNC0(adap, cls->cookie);
	if (!ch_flower) {
		ret = -ENOENT;
		goto err;
	}

	ret = FUNC1(dev, ch_flower->filter_id,
					&packets, &bytes,
					ch_flower->fs.hash);
	if (ret < 0)
		goto err;

	FUNC4(&ch_flower->lock);
	ofld_stats = &ch_flower->stats;
	if (ofld_stats->packet_count != packets) {
		if (ofld_stats->prev_packet_count != packets)
			ofld_stats->last_used = jiffies;
		FUNC2(&cls->stats, bytes - ofld_stats->byte_count,
				  packets - ofld_stats->packet_count,
				  ofld_stats->last_used);

		ofld_stats->packet_count = packets;
		ofld_stats->byte_count = bytes;
		ofld_stats->prev_packet_count = packets;
	}
	FUNC5(&ch_flower->lock);
	return 0;

err:
	return ret;
}