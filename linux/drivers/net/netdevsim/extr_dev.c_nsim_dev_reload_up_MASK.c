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
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct devlink {int dummy; } ;
typedef  enum nsim_resource_id { ____Placeholder_nsim_resource_id } nsim_resource_id ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int NSIM_RESOURCE_IPV4_FIB ; 
 int NSIM_RESOURCE_IPV4_FIB_RULES ; 
 int NSIM_RESOURCE_IPV6_FIB ; 
 int NSIM_RESOURCE_IPV6_FIB_RULES ; 
 int FUNC1 (struct devlink*,int,int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*) ; 
 int FUNC4 (struct net*,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct devlink *devlink,
			      struct netlink_ext_ack *extack)
{
	enum nsim_resource_id res_ids[] = {
		NSIM_RESOURCE_IPV4_FIB, NSIM_RESOURCE_IPV4_FIB_RULES,
		NSIM_RESOURCE_IPV6_FIB, NSIM_RESOURCE_IPV6_FIB_RULES
	};
	struct net *net = FUNC2(devlink);
	int i;

	for (i = 0; i < FUNC0(res_ids); ++i) {
		int err;
		u64 val;

		err = FUNC1(devlink, res_ids[i], &val);
		if (!err) {
			err = FUNC4(net, res_ids[i], val, extack);
			if (err)
				return err;
		}
	}
	FUNC3(devlink);

	return 0;
}