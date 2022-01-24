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
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  eventmask ;

/* Variables and functions */
 int BRCMF_EVENTING_MASK_LEN ; 
 int BRCMF_E_IF ; 
 int BRCMF_E_LAST ; 
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	int i, err;
	s8 eventmask[BRCMF_EVENTING_MASK_LEN];

	FUNC4(eventmask, 0, sizeof(eventmask));
	for (i = 0; i < BRCMF_E_LAST; i++) {
		if (ifp->drvr->fweh.evt_handler[i]) {
			FUNC1(EVENT, "enable event %s\n",
				  FUNC3(i));
			FUNC5(eventmask, i);
		}
	}

	/* want to handle IF event as well */
	FUNC1(EVENT, "enable event IF\n");
	FUNC5(eventmask, BRCMF_E_IF);

	err = FUNC2(ifp, "event_msgs",
				       eventmask, BRCMF_EVENTING_MASK_LEN);
	if (err)
		FUNC0(drvr, "Set event_msgs error (%d)\n", err);

	return err;
}