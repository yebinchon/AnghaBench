#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int link_up; } ;
struct TYPE_3__ {int /*<<< orphan*/  link_report_flags; } ;
struct bnx2x {int flags; scalar_t__ state; TYPE_2__ link_vars; TYPE_1__ vf_link_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int MF_FUNC_DIS ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *dev)
{
	struct bnx2x *bp = FUNC1(dev);

	if (bp->flags & MF_FUNC_DIS || (bp->state != BNX2X_STATE_OPEN))
		return 0;

	if (FUNC0(bp))
		return !FUNC2(BNX2X_LINK_REPORT_LINK_DOWN,
				 &bp->vf_link_vars.link_report_flags);

	return bp->link_vars.link_up;
}