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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {char* name; } ;
struct bonding {int dummy; } ;
struct bond_opt_value {int dummy; } ;
typedef  int /*<<< orphan*/  queue_id_str ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_OPT_QUEUE_ID ; 
 size_t IFLA_BOND_SLAVE_QUEUE_ID ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int FUNC0 (struct bonding*,int /*<<< orphan*/ ,struct bond_opt_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct bond_opt_value*,char*) ; 
 struct bonding* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *bond_dev,
				 struct net_device *slave_dev,
				 struct nlattr *tb[], struct nlattr *data[],
				 struct netlink_ext_ack *extack)
{
	struct bonding *bond = FUNC2(bond_dev);
	struct bond_opt_value newval;
	int err;

	if (!data)
		return 0;

	if (data[IFLA_BOND_SLAVE_QUEUE_ID]) {
		u16 queue_id = FUNC3(data[IFLA_BOND_SLAVE_QUEUE_ID]);
		char queue_id_str[IFNAMSIZ + 7];

		/* queue_id option setting expects slave_name:queue_id */
		FUNC4(queue_id_str, sizeof(queue_id_str), "%s:%u\n",
			 slave_dev->name, queue_id);
		FUNC1(&newval, queue_id_str);
		err = FUNC0(bond, BOND_OPT_QUEUE_ID, &newval);
		if (err)
			return err;
	}

	return 0;
}