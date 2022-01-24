#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* up ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  flags; TYPE_1__ rtl_ops; struct net_device* netdev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int IFF_UP ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;

	FUNC1(netdev);

	if (FUNC2(netdev) && netdev->flags & IFF_UP) {
		tp->rtl_ops.up(tp);
		FUNC0(netdev);
		FUNC3(WORK_ENABLE, &tp->flags);
		FUNC5(tp->intr_urb, GFP_NOIO);
	}

	return 0;
}