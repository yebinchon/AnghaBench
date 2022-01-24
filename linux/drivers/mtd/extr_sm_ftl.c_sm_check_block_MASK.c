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
struct sm_oob {int dummy; } ;
struct sm_ftl {int block_size; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ SM_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sm_ftl*,int,int,int) ; 
 int FUNC1 (struct sm_oob*) ; 
 scalar_t__ FUNC2 (struct sm_ftl*,int,int,int,int /*<<< orphan*/ *,struct sm_oob*) ; 

__attribute__((used)) static int FUNC3(struct sm_ftl *ftl, int zone, int block)
{
	int boffset;
	struct sm_oob oob;
	int lbas[] = { -3, 0, 0, 0 };
	int i = 0;
	int test_lba;


	/* First just check that block doesn't look fishy */
	/* Only blocks that are valid or are sliced in two parts, are
		accepted */
	for (boffset = 0; boffset < ftl->block_size;
					boffset += SM_SECTOR_SIZE) {

		/* This shouldn't happen anyway */
		if (FUNC2(ftl, zone, block, boffset, NULL, &oob))
			return -2;

		test_lba = FUNC1(&oob);

		if (lbas[i] != test_lba)
			lbas[++i] = test_lba;

		/* If we found three different LBAs, something is fishy */
		if (i == 3)
			return -EIO;
	}

	/* If the block is sliced (partially erased usually) erase it */
	if (i == 2) {
		FUNC0(ftl, zone, block, 1);
		return 1;
	}

	return 0;
}