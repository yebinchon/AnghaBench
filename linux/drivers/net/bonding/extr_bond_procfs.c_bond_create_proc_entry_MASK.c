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
struct net_device {int /*<<< orphan*/  name; } ;
struct bonding {int /*<<< orphan*/  proc_file_name; int /*<<< orphan*/ * proc_entry; struct net_device* dev; } ;
struct bond_net {scalar_t__ proc_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  bond_info_seq_ops ; 
 int /*<<< orphan*/  bond_net_id ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bond_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *,struct bonding*) ; 

void FUNC5(struct bonding *bond)
{
	struct net_device *bond_dev = bond->dev;
	struct bond_net *bn = FUNC2(FUNC0(bond_dev), bond_net_id);

	if (bn->proc_dir) {
		bond->proc_entry = FUNC4(bond_dev->name, 0444,
				bn->proc_dir, &bond_info_seq_ops, bond);
		if (bond->proc_entry == NULL)
			FUNC3(bond_dev, "Cannot create /proc/net/%s/%s\n",
				    DRV_NAME, bond_dev->name);
		else
			FUNC1(bond->proc_file_name, bond_dev->name, IFNAMSIZ);
	}
}