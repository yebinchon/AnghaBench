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
struct pvr2_ioread {struct pvr2_ioread* sync_key_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_ioread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_ioread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct pvr2_ioread*) ; 

void FUNC3(struct pvr2_ioread *cp)
{
	if (!cp) return;
	FUNC1(cp);
	FUNC2(PVR2_TRACE_STRUCT,"pvr2_ioread_destroy id=%p",cp);
	if (cp->sync_key_ptr) {
		FUNC0(cp->sync_key_ptr);
		cp->sync_key_ptr = NULL;
	}
	FUNC0(cp);
}