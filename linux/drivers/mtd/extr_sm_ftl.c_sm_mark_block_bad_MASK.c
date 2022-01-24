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
struct sm_oob {int block_status; } ;
struct sm_ftl {int block_size; scalar_t__ unstable; } ;

/* Variables and functions */
 int /*<<< orphan*/  SM_OOB_SIZE ; 
 scalar_t__ SM_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sm_oob*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (struct sm_ftl*) ; 
 int /*<<< orphan*/  FUNC3 (struct sm_ftl*,int,int,int,int /*<<< orphan*/ *,struct sm_oob*) ; 

__attribute__((used)) static void FUNC4(struct sm_ftl *ftl, int zone, int block)
{
	struct sm_oob oob;
	int boffset;

	FUNC0(&oob, 0xFF, SM_OOB_SIZE);
	oob.block_status = 0xF0;

	if (ftl->unstable)
		return;

	if (FUNC2(ftl))
		return;

	FUNC1("marking block %d of zone %d as bad", block, zone);

	/* We aren't checking the return value, because we don't care */
	/* This also fails on fake xD cards, but I guess these won't expose
		any bad blocks till fail completely */
	for (boffset = 0; boffset < ftl->block_size; boffset += SM_SECTOR_SIZE)
		FUNC3(ftl, zone, block, boffset, NULL, &oob);
}