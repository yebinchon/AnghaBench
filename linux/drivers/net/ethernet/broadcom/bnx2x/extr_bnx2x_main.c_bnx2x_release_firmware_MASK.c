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
struct bnx2x {int /*<<< orphan*/ * firmware; int /*<<< orphan*/  init_data; int /*<<< orphan*/  init_ops; int /*<<< orphan*/  init_ops_offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	FUNC0(bp->init_ops_offsets);
	FUNC0(bp->init_ops);
	FUNC0(bp->init_data);
	FUNC1(bp->firmware);
	bp->firmware = NULL;
}