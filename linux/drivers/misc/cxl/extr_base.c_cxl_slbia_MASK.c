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
struct mm_struct {int dummy; } ;
struct cxl_calls {int /*<<< orphan*/  (* cxl_slbia ) (struct mm_struct*) ;} ;

/* Variables and functions */
 struct cxl_calls* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_calls*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 

void FUNC4(struct mm_struct *mm)
{
	struct cxl_calls *calls;

	calls = FUNC0();
	if (!calls)
		return;

	if (FUNC2())
	    calls->cxl_slbia(mm);

	FUNC1(calls);
}