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
struct net_device {scalar_t__ addr_assign_type; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;
struct bonding {int /*<<< orphan*/  bond_list; int /*<<< orphan*/  stats_lock_key; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  wq; } ;
struct bond_net {int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ NET_ADDR_PERM ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  bond_net_id ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bond_net* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 struct bonding* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC11(bond_dev);
	struct bond_net *bn = FUNC9(FUNC3(bond_dev), bond_net_id);

	FUNC10(bond_dev, "Begin bond_init\n");

	bond->wq = FUNC0(bond_dev->name, WQ_MEM_RECLAIM);
	if (!bond->wq)
		return -ENOMEM;

	FUNC12(&bond->stats_lock);
	FUNC7(&bond->stats_lock_key);
	FUNC8(&bond->stats_lock, &bond->stats_lock_key);

	FUNC6(&bond->bond_list, &bn->dev_list);

	FUNC2(bond);

	FUNC1(bond);

	/* Ensure valid dev_addr */
	if (FUNC5(bond_dev->dev_addr) &&
	    bond_dev->addr_assign_type == NET_ADDR_PERM)
		FUNC4(bond_dev);

	return 0;
}