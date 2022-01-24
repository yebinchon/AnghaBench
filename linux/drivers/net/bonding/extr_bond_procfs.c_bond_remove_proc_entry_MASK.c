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
struct bonding {int /*<<< orphan*/ * proc_entry; int /*<<< orphan*/  proc_file_name; struct net_device* dev; } ;
struct bond_net {scalar_t__ proc_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  bond_net_id ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bond_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct bonding *bond)
{
	struct net_device *bond_dev = bond->dev;
	struct bond_net *bn = FUNC2(FUNC0(bond_dev), bond_net_id);

	if (bn->proc_dir && bond->proc_entry) {
		FUNC3(bond->proc_file_name, bn->proc_dir);
		FUNC1(bond->proc_file_name, 0, IFNAMSIZ);
		bond->proc_entry = NULL;
	}
}