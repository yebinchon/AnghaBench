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
 int /*<<< orphan*/  DOC_CMD_PAGE_SIZE_532 ; 
 int DOC_CTRL_PROTECTION_ERROR ; 
 int DOC_CTRL_SEQUENCE_ERROR ; 
 int /*<<< orphan*/  DOC_FLASHCONTROL ; 
 int /*<<< orphan*/  DOC_SEQ_PAGE_SIZE_532 ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct docg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct docg3 *docg3)
{
	int fctrl;

	FUNC0("doc_set_extra_page_mode()\n");
	FUNC3(docg3, DOC_SEQ_PAGE_SIZE_532);
	FUNC2(docg3, DOC_CMD_PAGE_SIZE_532);
	FUNC1(docg3, 2);

	fctrl = FUNC4(docg3, DOC_FLASHCONTROL);
	if (fctrl & (DOC_CTRL_PROTECTION_ERROR | DOC_CTRL_SEQUENCE_ERROR))
		return -EIO;
	else
		return 0;
}