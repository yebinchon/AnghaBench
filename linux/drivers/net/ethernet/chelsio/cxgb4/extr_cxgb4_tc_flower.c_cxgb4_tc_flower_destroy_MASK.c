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
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct ch_tc_flower_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  fs; int /*<<< orphan*/  filter_id; } ;
struct adapter {int /*<<< orphan*/  flower_ht_params; int /*<<< orphan*/  flower_tbl; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ch_tc_flower_entry* FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ch_tc_flower_entry*,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  rcu ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *dev,
			    struct flow_cls_offload *cls)
{
	struct adapter *adap = FUNC3(dev);
	struct ch_tc_flower_entry *ch_flower;
	int ret;

	ch_flower = FUNC0(adap, cls->cookie);
	if (!ch_flower)
		return -ENOENT;

	ret = FUNC1(dev, ch_flower->filter_id, &ch_flower->fs);
	if (ret)
		goto err;

	ret = FUNC5(&adap->flower_tbl, &ch_flower->node,
				     adap->flower_ht_params);
	if (ret) {
		FUNC4(dev, "Flow remove from rhashtable failed");
		goto err;
	}
	FUNC2(ch_flower, rcu);

err:
	return ret;
}