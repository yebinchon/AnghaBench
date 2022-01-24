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
struct slave {int /*<<< orphan*/  dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_lag_upper_info {int tx_type; int /*<<< orphan*/  hash_type; } ;
struct bonding {int /*<<< orphan*/  dev; } ;
typedef  enum netdev_lag_tx_type { ____Placeholder_netdev_lag_tx_type } netdev_lag_tx_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*,int) ; 
 int FUNC1 (struct bonding*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct slave*,struct netdev_lag_upper_info*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct bonding *bond, struct slave *slave,
				      struct netlink_ext_ack *extack)
{
	struct netdev_lag_upper_info lag_upper_info;
	enum netdev_lag_tx_type type;

	type = FUNC1(bond);
	lag_upper_info.tx_type = type;
	lag_upper_info.hash_type = FUNC0(bond, type);

	return FUNC2(slave->dev, bond->dev, slave,
					    &lag_upper_info, extack);
}