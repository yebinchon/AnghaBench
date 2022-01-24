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
struct pvr2_hdw {int /*<<< orphan*/  big_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int FUNC3 (struct pvr2_hdw*) ; 

int FUNC4(struct pvr2_hdw *hdw)
{
	int fl;
	FUNC1(hdw->big_lock); do {
		fl = FUNC3(hdw);
	} while (0); FUNC0(hdw->big_lock);
	if (fl) FUNC2(hdw);
	return 0;
}