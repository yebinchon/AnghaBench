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
struct msb_data {int read_only; int /*<<< orphan*/ * free_block_count; int /*<<< orphan*/  used_blocks_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct msb_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct msb_data *msb, int pba)
{
	int zone = FUNC1(pba);

	if (FUNC4(pba, msb->used_blocks_bitmap)) {
		FUNC3(
		"BUG: attempt to mark already used pba %d as used", pba);
		msb->read_only = true;
		return;
	}

	if (FUNC2(msb))
		return;

	/* No races because all IO is single threaded */
	FUNC0(pba, msb->used_blocks_bitmap);
	msb->free_block_count[zone]--;
}