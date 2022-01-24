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
typedef  int u32 ;
struct b44 {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CAM_CTRL ; 
 int CAM_CTRL_ENABLE ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b44 *bp)
{
	FUNC2(bp, B44_CAM_CTRL, 0);
	if (!(bp->dev->flags & IFF_PROMISC)) {
		u32 val;

		FUNC0(bp, bp->dev->dev_addr, 0);
		val = FUNC1(bp, B44_CAM_CTRL);
		FUNC2(bp, B44_CAM_CTRL, val | CAM_CTRL_ENABLE);
	}
}