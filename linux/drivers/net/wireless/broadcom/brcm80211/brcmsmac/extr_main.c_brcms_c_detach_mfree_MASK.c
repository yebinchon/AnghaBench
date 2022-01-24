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
struct brcms_c_info {scalar_t__ probe_resp; scalar_t__ beacon; struct brcms_c_info* hw; struct brcms_c_info** bandstate; struct brcms_c_info* corestate; struct brcms_c_info* macstat_snapshot; struct brcms_c_info* stf; struct brcms_c_info* protection; struct brcms_c_info* default_bss; struct brcms_c_info* modulecb; struct brcms_c_info* pub; int /*<<< orphan*/  bsscfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc)
{
	if (wlc == NULL)
		return;

	FUNC0(wlc->bsscfg);
	FUNC2(wlc->pub);
	FUNC2(wlc->modulecb);
	FUNC2(wlc->default_bss);
	FUNC2(wlc->protection);
	FUNC2(wlc->stf);
	FUNC2(wlc->bandstate[0]);
	if (wlc->corestate)
		FUNC2(wlc->corestate->macstat_snapshot);
	FUNC2(wlc->corestate);
	if (wlc->hw)
		FUNC2(wlc->hw->bandstate[0]);
	FUNC2(wlc->hw);
	if (wlc->beacon)
		FUNC1(wlc->beacon);
	if (wlc->probe_resp)
		FUNC1(wlc->probe_resp);

	FUNC2(wlc);
}