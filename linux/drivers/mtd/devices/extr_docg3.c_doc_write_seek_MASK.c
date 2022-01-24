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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int DOC_ADDR_BLOCK_SHIFT ; 
 int DOC_ADDR_PAGE_MASK ; 
 int /*<<< orphan*/  DOC_CMD_PROG_CYCLE1 ; 
 int /*<<< orphan*/  DOC_CMD_PROG_CYCLE3 ; 
 int /*<<< orphan*/  DOC_CMD_READ_PLANE1 ; 
 int /*<<< orphan*/  DOC_CMD_READ_PLANE2 ; 
 int DOC_LAYOUT_PAGE_SIZE ; 
 int /*<<< orphan*/  DOC_SEQ_PAGE_SETUP ; 
 int /*<<< orphan*/  DOC_SEQ_SET_PLANE1 ; 
 int /*<<< orphan*/  DOC_SEQ_SET_PLANE2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC5 (struct docg3*,int,int) ; 
 int FUNC6 (struct docg3*) ; 

__attribute__((used)) static int FUNC7(struct docg3 *docg3, int block0, int block1, int page,
			 int ofs)
{
	int ret = 0, sector;

	FUNC0("doc_write_seek(blocks=(%d,%d), page=%d, ofs=%d)\n",
		block0, block1, page, ofs);

	FUNC4(docg3);

	if (ofs < 2 * DOC_LAYOUT_PAGE_SIZE) {
		FUNC3(docg3, DOC_SEQ_SET_PLANE1);
		FUNC2(docg3, DOC_CMD_READ_PLANE1);
		FUNC1(docg3, 2);
	} else {
		FUNC3(docg3, DOC_SEQ_SET_PLANE2);
		FUNC2(docg3, DOC_CMD_READ_PLANE2);
		FUNC1(docg3, 2);
	}

	FUNC3(docg3, DOC_SEQ_PAGE_SETUP);
	FUNC2(docg3, DOC_CMD_PROG_CYCLE1);

	sector = (block0 << DOC_ADDR_BLOCK_SHIFT) + (page & DOC_ADDR_PAGE_MASK);
	FUNC5(docg3, sector, ofs);

	FUNC2(docg3, DOC_CMD_PROG_CYCLE3);
	FUNC1(docg3, 2);
	ret = FUNC6(docg3);
	if (ret)
		goto out;

	FUNC2(docg3, DOC_CMD_PROG_CYCLE1);
	sector = (block1 << DOC_ADDR_BLOCK_SHIFT) + (page & DOC_ADDR_PAGE_MASK);
	FUNC5(docg3, sector, ofs);
	FUNC1(docg3, 1);

out:
	return ret;
}