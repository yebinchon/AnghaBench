#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* evt_handler; } ;
struct brcmf_pub {TYPE_1__ fweh; } ;
typedef  enum brcmf_fweh_event_code { ____Placeholder_brcmf_fweh_event_code } brcmf_fweh_event_code ;
typedef  scalar_t__ brcmf_fweh_handler_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct brcmf_pub *drvr, enum brcmf_fweh_event_code code,
			brcmf_fweh_handler_t handler)
{
	if (drvr->fweh.evt_handler[code]) {
		FUNC0(drvr, "event code %d already registered\n", code);
		return -ENOSPC;
	}
	drvr->fweh.evt_handler[code] = handler;
	FUNC1(TRACE, "event handler registered for %s\n",
		  FUNC2(code));
	return 0;
}