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
struct TYPE_2__ {int mult; scalar_t__ shift; int /*<<< orphan*/  mask; int /*<<< orphan*/  read; } ;
struct bnx2x {TYPE_1__ cyclecounter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bnx2x_cyclecounter_read ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	FUNC1(&bp->cyclecounter, 0, sizeof(bp->cyclecounter));
	bp->cyclecounter.read = bnx2x_cyclecounter_read;
	bp->cyclecounter.mask = FUNC0(64);
	bp->cyclecounter.shift = 0;
	bp->cyclecounter.mult = 1;
}