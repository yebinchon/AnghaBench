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
struct docg3 {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_CMD_READ_ALL_PLANES ; 
 int /*<<< orphan*/  DOC_CMD_READ_FLASH ; 
 int /*<<< orphan*/  DOC_CMD_SET_ADDR_READ ; 
 int /*<<< orphan*/  DOC_DATAEND ; 
 int DOC_LAYOUT_PAGE_OOB_SIZE ; 
 int DOC_LAYOUT_PAGE_SIZE ; 
 int DOC_LAYOUT_WEAR_OFFSET ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct docg3*,int,int,int,int,int) ; 
 int FUNC5 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC6 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC8 (struct docg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct docg3 *docg3, int block0, int block1,
				 int page, int offset)
{
	int wear_area = 0, ret = 0;

	FUNC0("doc_read_page_prepare(blocks=(%d,%d), page=%d, ofsInPage=%d)\n",
		block0, block1, page, offset);
	if (offset >= DOC_LAYOUT_WEAR_OFFSET)
		wear_area = 1;
	if (!wear_area && offset > (DOC_LAYOUT_PAGE_OOB_SIZE * 2))
		return -EINVAL;

	FUNC6(docg3, docg3->device_id);
	ret = FUNC5(docg3);
	if (ret)
		goto err;

	/* Program the flash address block and page */
	ret = FUNC4(docg3, block0, block1, page, wear_area, offset);
	if (ret)
		goto err;

	FUNC3(docg3, DOC_CMD_READ_ALL_PLANES);
	FUNC1(docg3, 2);
	FUNC7(docg3);

	FUNC3(docg3, DOC_CMD_SET_ADDR_READ);
	FUNC1(docg3, 1);
	if (offset >= DOC_LAYOUT_PAGE_SIZE * 2)
		offset -= 2 * DOC_LAYOUT_PAGE_SIZE;
	FUNC2(docg3, offset >> 2);
	FUNC1(docg3, 1);
	FUNC7(docg3);

	FUNC3(docg3, DOC_CMD_READ_FLASH);

	return 0;
err:
	FUNC8(docg3, 0, DOC_DATAEND);
	FUNC1(docg3, 2);
	return -EIO;
}