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
struct brcmf_fweh_info {int /*<<< orphan*/  event_q; int /*<<< orphan*/  evt_q_lock; int /*<<< orphan*/  event_work; } ;
struct brcmf_pub {struct brcmf_fweh_info fweh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_fweh_event_worker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct brcmf_pub *drvr)
{
	struct brcmf_fweh_info *fweh = &drvr->fweh;
	FUNC1(&fweh->event_work, brcmf_fweh_event_worker);
	FUNC2(&fweh->evt_q_lock);
	FUNC0(&fweh->event_q);
}