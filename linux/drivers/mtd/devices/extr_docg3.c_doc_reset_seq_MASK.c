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
 int /*<<< orphan*/  DOC_CMD_RESET ; 
 int /*<<< orphan*/  DOC_FLASHCONTROL ; 
 int /*<<< orphan*/  DOC_SEQ_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC5 (struct docg3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct docg3 *docg3)
{
	int ret;

	FUNC5(docg3, 0x10, DOC_FLASHCONTROL);
	FUNC3(docg3, DOC_SEQ_RESET);
	FUNC2(docg3, DOC_CMD_RESET);
	FUNC1(docg3, 2);
	ret = FUNC4(docg3);

	FUNC0("doc_reset_seq() -> isReady=%s\n", ret ? "false" : "true");
	return ret;
}