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
typedef  int u32 ;
struct net_failover_info {int /*<<< orphan*/  primary_stats; int /*<<< orphan*/  primary_dev; int /*<<< orphan*/  standby_stats; int /*<<< orphan*/  standby_dev; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {int mtu; int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; TYPE_1__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NETDEV_JOIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*,char*,int /*<<< orphan*/ ) ; 
 struct net_failover_info* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 scalar_t__ FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct net_device* FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC22(struct net_device *slave_dev,
				       struct net_device *failover_dev)
{
	struct net_device *standby_dev, *primary_dev;
	struct net_failover_info *nfo_info;
	bool slave_is_standby;
	u32 orig_mtu;
	int err;

	/* Align MTU of slave with failover dev */
	orig_mtu = slave_dev->mtu;
	err = FUNC8(slave_dev, failover_dev->mtu);
	if (err) {
		FUNC13(failover_dev, "unable to change mtu of %s to %u register failed\n",
			   slave_dev->name, failover_dev->mtu);
		goto done;
	}

	FUNC3(slave_dev);

	if (FUNC18(failover_dev)) {
		err = FUNC6(slave_dev, NULL);
		if (err && (err != -EBUSY)) {
			FUNC13(failover_dev, "Opening slave %s failed err:%d\n",
				   slave_dev->name, err);
			goto err_dev_open;
		}
	}

	FUNC16(failover_dev);
	FUNC9(slave_dev, failover_dev);
	FUNC4(slave_dev, failover_dev);
	FUNC17(failover_dev);

	err = FUNC21(slave_dev, failover_dev);
	if (err) {
		FUNC13(failover_dev, "Failed to add vlan ids to device %s err:%d\n",
			   slave_dev->name, err);
		goto err_vlan_add;
	}

	nfo_info = FUNC15(failover_dev);
	standby_dev = FUNC20(nfo_info->standby_dev);
	primary_dev = FUNC20(nfo_info->primary_dev);
	slave_is_standby = slave_dev->dev.parent == failover_dev->dev.parent;

	if (slave_is_standby) {
		FUNC19(nfo_info->standby_dev, slave_dev);
		standby_dev = slave_dev;
		FUNC2(standby_dev, &nfo_info->standby_stats);
	} else {
		FUNC19(nfo_info->primary_dev, slave_dev);
		primary_dev = slave_dev;
		FUNC2(primary_dev, &nfo_info->primary_stats);
		failover_dev->min_mtu = slave_dev->min_mtu;
		failover_dev->max_mtu = slave_dev->max_mtu;
	}

	FUNC12(slave_dev, primary_dev, standby_dev);
	FUNC11(failover_dev);

	FUNC0(NETDEV_JOIN, slave_dev);

	FUNC14(failover_dev, "failover %s slave:%s registered\n",
		    slave_is_standby ? "standby" : "primary", slave_dev->name);

	return 0;

err_vlan_add:
	FUNC10(slave_dev, failover_dev);
	FUNC5(slave_dev, failover_dev);
	FUNC1(slave_dev);
err_dev_open:
	FUNC7(slave_dev);
	FUNC8(slave_dev, orig_mtu);
done:
	return err;
}