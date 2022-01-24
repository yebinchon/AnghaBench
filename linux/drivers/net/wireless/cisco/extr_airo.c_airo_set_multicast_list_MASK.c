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
struct net_device {int flags; struct airo_info* ml_priv; } ;
struct airo_info {int flags; int /*<<< orphan*/  thr_wait; int /*<<< orphan*/  jobs; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  JOB_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev) {
	struct airo_info *ai = dev->ml_priv;

	if ((dev->flags ^ ai->flags) & IFF_PROMISC) {
		FUNC1(FLAG_PROMISC, &ai->flags);
		if (FUNC2(&ai->sem) != 0) {
			FUNC4(JOB_PROMISC, &ai->jobs);
			FUNC5(&ai->thr_wait);
		} else
			FUNC0(ai);
	}

	if ((dev->flags&IFF_ALLMULTI) || !FUNC3(dev)) {
		/* Turn on multicast.  (Should be already setup...) */
	}
}