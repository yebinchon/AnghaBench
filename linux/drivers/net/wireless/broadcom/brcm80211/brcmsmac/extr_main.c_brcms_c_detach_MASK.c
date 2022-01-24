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
typedef  scalar_t__ uint ;
struct brcms_c_info {int /*<<< orphan*/  cmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_c_info*) ; 

uint FUNC6(struct brcms_c_info *wlc)
{
	uint callbacks;

	if (wlc == NULL)
		return 0;

	FUNC0(wlc);

	/* delete software timers */
	callbacks = 0;
	if (!FUNC4(wlc))
		callbacks++;

	FUNC1(wlc->cmi);

	FUNC5(wlc);

	FUNC3(wlc);

	FUNC2(wlc);
	return callbacks;
}