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
struct net_device {int mtu; } ;
struct cas {int phy_type; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  reset_task_pending; int /*<<< orphan*/  reset_task_pending_mtu; int /*<<< orphan*/  reset_task_pending_all; } ;

/* Variables and functions */
 int CAS_PHY_SERDES ; 
 int /*<<< orphan*/  CAS_RESET_ALL ; 
 int /*<<< orphan*/  CAS_RESET_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cas* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int new_mtu)
{
	struct cas *cp = FUNC3(dev);

	dev->mtu = new_mtu;
	if (!FUNC5(dev) || !FUNC4(dev))
		return 0;

	/* let the reset task handle it */
#if 1
	FUNC0(&cp->reset_task_pending);
	if ((cp->phy_type & CAS_PHY_SERDES)) {
		FUNC0(&cp->reset_task_pending_all);
	} else {
		FUNC0(&cp->reset_task_pending_mtu);
	}
	FUNC7(&cp->reset_task);
#else
	atomic_set(&cp->reset_task_pending, (cp->phy_type & CAS_PHY_SERDES) ?
		   CAS_RESET_ALL : CAS_RESET_MTU);
	pr_err("reset called in cas_change_mtu\n");
	schedule_work(&cp->reset_task);
#endif

	FUNC2(&cp->reset_task);
	return 0;
}