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
struct netdev_phys_item_id {int id_len; int /*<<< orphan*/  id; } ;
struct net_device {int dummy; } ;
struct bnxt {scalar_t__ eswitch_mode; int /*<<< orphan*/  switch_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bnxt* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev,
			    struct netdev_phys_item_id *ppid)
{
	struct bnxt *bp = FUNC2(dev);

	if (bp->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
		return -EOPNOTSUPP;

	/* The PF and it's VF-reps only support the switchdev framework */
	if (!FUNC0(bp))
		return -EOPNOTSUPP;

	ppid->id_len = sizeof(bp->switch_id);
	FUNC1(ppid->id, bp->switch_id, ppid->id_len);

	return 0;
}