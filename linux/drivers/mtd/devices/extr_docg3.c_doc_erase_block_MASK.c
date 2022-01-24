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
 int /*<<< orphan*/  DOC_CMD_ERASECYCLE2 ; 
 int /*<<< orphan*/  DOC_CMD_PROG_BLOCK_ADDR ; 
 int /*<<< orphan*/  DOC_SEQ_ERASE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC6 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC7 (struct docg3*,int) ; 
 int FUNC8 (struct docg3*) ; 
 scalar_t__ FUNC9 (struct docg3*) ; 

__attribute__((used)) static int FUNC10(struct docg3 *docg3, int block0, int block1)
{
	int ret, sector;

	FUNC0("doc_erase_block(blocks=(%d,%d))\n", block0, block1);
	ret = FUNC5(docg3);
	if (ret)
		return -EIO;

	FUNC6(docg3);
	FUNC4(docg3, DOC_SEQ_ERASE);

	sector = block0 << DOC_ADDR_BLOCK_SHIFT;
	FUNC3(docg3, DOC_CMD_PROG_BLOCK_ADDR);
	FUNC7(docg3, sector);
	sector = block1 << DOC_ADDR_BLOCK_SHIFT;
	FUNC3(docg3, DOC_CMD_PROG_BLOCK_ADDR);
	FUNC7(docg3, sector);
	FUNC1(docg3, 1);

	FUNC3(docg3, DOC_CMD_ERASECYCLE2);
	FUNC1(docg3, 2);

	if (FUNC9(docg3)) {
		FUNC2("Erase blocks %d,%d error\n", block0, block1);
		return -EIO;
	}

	return FUNC8(docg3);
}