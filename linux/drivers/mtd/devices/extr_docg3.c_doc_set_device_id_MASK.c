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
typedef  int u8 ;
struct docg3 {int dummy; } ;

/* Variables and functions */
 int DOC_CTRL_CE ; 
 int DOC_CTRL_VIOLATION ; 
 int /*<<< orphan*/  DOC_DEVICESELECT ; 
 int /*<<< orphan*/  DOC_FLASHCONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct docg3 *docg3, int id)
{
	u8 ctrl;

	FUNC0("doc_set_device_id(%d)\n", id);
	FUNC2(docg3, id, DOC_DEVICESELECT);
	ctrl = FUNC1(docg3, DOC_FLASHCONTROL);

	ctrl &= ~DOC_CTRL_VIOLATION;
	ctrl |= DOC_CTRL_CE;
	FUNC2(docg3, ctrl, DOC_FLASHCONTROL);
}