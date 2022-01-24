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
struct brcmf_fweh_info {int /*<<< orphan*/  evt_handler; int /*<<< orphan*/  event_q; int /*<<< orphan*/  event_work; } ;
struct brcmf_pub {struct brcmf_fweh_info fweh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct brcmf_pub *drvr)
{
	struct brcmf_fweh_info *fweh = &drvr->fweh;

	/* cancel the worker */
	FUNC1(&fweh->event_work);
	FUNC0(!FUNC2(&fweh->event_q));
	FUNC3(fweh->evt_handler, 0, sizeof(fweh->evt_handler));
}