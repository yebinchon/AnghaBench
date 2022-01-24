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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvr2_context_cleaned_flag ; 
 int /*<<< orphan*/  pvr2_context_cleanup_data ; 
 int pvr2_context_cleanup_flag ; 
 int /*<<< orphan*/  pvr2_context_sync_data ; 
 int /*<<< orphan*/  pvr2_context_thread_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	pvr2_context_cleanup_flag = !0;
	FUNC2(&pvr2_context_sync_data);
	FUNC1(
		pvr2_context_cleanup_data,
		pvr2_context_cleaned_flag);
	FUNC0(pvr2_context_thread_ptr);
}