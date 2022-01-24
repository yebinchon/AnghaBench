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
typedef  scalar_t__ u64 ;
struct net {int dummy; } ;
struct devlink_resource_size_params {int size_granularity; int /*<<< orphan*/  unit; scalar_t__ size_max; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_RESOURCE_ID_PARENT_TOP ; 
 int /*<<< orphan*/  DEVLINK_RESOURCE_UNIT_ENTRY ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV4 ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV4_FIB ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV4_FIB_RULES ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV6 ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV6_FIB ; 
 int /*<<< orphan*/  NSIM_RESOURCE_IPV6_FIB_RULES ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*) ; 
 int FUNC1 (struct devlink*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_resource_size_params*) ; 
 int /*<<< orphan*/  nsim_dev_ipv4_fib_resource_occ_get ; 
 int /*<<< orphan*/  nsim_dev_ipv4_fib_rules_res_occ_get ; 
 int /*<<< orphan*/  nsim_dev_ipv6_fib_resource_occ_get ; 
 int /*<<< orphan*/  nsim_dev_ipv6_fib_rules_res_occ_get ; 
 struct net* FUNC2 (struct devlink*) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct devlink *devlink)
{
	struct devlink_resource_size_params params = {
		.size_max = (u64)-1,
		.size_granularity = 1,
		.unit = DEVLINK_RESOURCE_UNIT_ENTRY
	};
	struct net *net = FUNC2(devlink);
	int err;
	u64 n;

	/* Resources for IPv4 */
	err = FUNC1(devlink, "IPv4", (u64)-1,
					NSIM_RESOURCE_IPV4,
					DEVLINK_RESOURCE_ID_PARENT_TOP,
					&params);
	if (err) {
		FUNC4("Failed to register IPv4 top resource\n");
		goto out;
	}

	n = FUNC3(net, NSIM_RESOURCE_IPV4_FIB, true);
	err = FUNC1(devlink, "fib", n,
					NSIM_RESOURCE_IPV4_FIB,
					NSIM_RESOURCE_IPV4, &params);
	if (err) {
		FUNC4("Failed to register IPv4 FIB resource\n");
		return err;
	}

	n = FUNC3(net, NSIM_RESOURCE_IPV4_FIB_RULES, true);
	err = FUNC1(devlink, "fib-rules", n,
					NSIM_RESOURCE_IPV4_FIB_RULES,
					NSIM_RESOURCE_IPV4, &params);
	if (err) {
		FUNC4("Failed to register IPv4 FIB rules resource\n");
		return err;
	}

	/* Resources for IPv6 */
	err = FUNC1(devlink, "IPv6", (u64)-1,
					NSIM_RESOURCE_IPV6,
					DEVLINK_RESOURCE_ID_PARENT_TOP,
					&params);
	if (err) {
		FUNC4("Failed to register IPv6 top resource\n");
		goto out;
	}

	n = FUNC3(net, NSIM_RESOURCE_IPV6_FIB, true);
	err = FUNC1(devlink, "fib", n,
					NSIM_RESOURCE_IPV6_FIB,
					NSIM_RESOURCE_IPV6, &params);
	if (err) {
		FUNC4("Failed to register IPv6 FIB resource\n");
		return err;
	}

	n = FUNC3(net, NSIM_RESOURCE_IPV6_FIB_RULES, true);
	err = FUNC1(devlink, "fib-rules", n,
					NSIM_RESOURCE_IPV6_FIB_RULES,
					NSIM_RESOURCE_IPV6, &params);
	if (err) {
		FUNC4("Failed to register IPv6 FIB rules resource\n");
		return err;
	}

	FUNC0(devlink,
					  NSIM_RESOURCE_IPV4_FIB,
					  nsim_dev_ipv4_fib_resource_occ_get,
					  net);
	FUNC0(devlink,
					  NSIM_RESOURCE_IPV4_FIB_RULES,
					  nsim_dev_ipv4_fib_rules_res_occ_get,
					  net);
	FUNC0(devlink,
					  NSIM_RESOURCE_IPV6_FIB,
					  nsim_dev_ipv6_fib_resource_occ_get,
					  net);
	FUNC0(devlink,
					  NSIM_RESOURCE_IPV6_FIB_RULES,
					  nsim_dev_ipv6_fib_rules_res_occ_get,
					  net);
out:
	return err;
}