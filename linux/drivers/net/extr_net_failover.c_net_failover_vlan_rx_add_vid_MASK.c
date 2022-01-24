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
typedef  int /*<<< orphan*/  u16 ;
struct net_failover_info {int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct net_failover_info* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, __be16 proto,
					u16 vid)
{
	struct net_failover_info *nfo_info = FUNC0(dev);
	struct net_device *primary_dev, *standby_dev;
	int ret = 0;

	primary_dev = FUNC1(nfo_info->primary_dev);
	if (primary_dev) {
		ret = FUNC2(primary_dev, proto, vid);
		if (ret)
			return ret;
	}

	standby_dev = FUNC1(nfo_info->standby_dev);
	if (standby_dev) {
		ret = FUNC2(standby_dev, proto, vid);
		if (ret)
			if (primary_dev)
				FUNC3(primary_dev, proto, vid);
	}

	return ret;
}