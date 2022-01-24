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
typedef  int /*<<< orphan*/  u16 ;
struct bnx2x {TYPE_2__* fp; TYPE_1__* sp_objs; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned long*) ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp, u16 vid, bool add)
{
	int rc;

	if (FUNC0(bp)) {
		unsigned long ramrod_flags = 0;

		FUNC1(RAMROD_COMP_WAIT, &ramrod_flags);
		rc = FUNC2(bp, vid, &bp->sp_objs->vlan_obj,
					add, &ramrod_flags);
	} else {
		rc = FUNC3(bp, vid, bp->fp->index, add);
	}

	return rc;
}