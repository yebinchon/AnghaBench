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
typedef  scalar_t__ u32 ;
struct brcmf_pub {TYPE_1__* settings; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  roamtrigger ;
typedef  int /*<<< orphan*/  roam_delta ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {scalar_t__ roamoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_ROAM_DELTA ; 
 int /*<<< orphan*/  BRCMF_C_SET_ROAM_TRIGGER ; 
 scalar_t__ BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF ; 
 scalar_t__ BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON ; 
 int /*<<< orphan*/  BRCM_BAND_ALL ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  WL_ROAM_DELTA ; 
 int /*<<< orphan*/  WL_ROAM_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC5(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	s32 err;
	u32 bcn_timeout;
	__le32 roamtrigger[2];
	__le32 roam_delta[2];

	/* Configure beacon timeout value based upon roaming setting */
	if (ifp->drvr->settings->roamoff)
		bcn_timeout = BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF;
	else
		bcn_timeout = BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON;
	err = FUNC3(ifp, "bcn_timeout", bcn_timeout);
	if (err) {
		FUNC0(drvr, "bcn_timeout error (%d)\n", err);
		goto roam_setup_done;
	}

	/* Enable/Disable built-in roaming to allow supplicant to take care of
	 * roaming.
	 */
	FUNC1(INFO, "Internal Roaming = %s\n",
		  ifp->drvr->settings->roamoff ? "Off" : "On");
	err = FUNC3(ifp, "roam_off",
				      ifp->drvr->settings->roamoff);
	if (err) {
		FUNC0(drvr, "roam_off error (%d)\n", err);
		goto roam_setup_done;
	}

	roamtrigger[0] = FUNC4(WL_ROAM_TRIGGER_LEVEL);
	roamtrigger[1] = FUNC4(BRCM_BAND_ALL);
	err = FUNC2(ifp, BRCMF_C_SET_ROAM_TRIGGER,
				     (void *)roamtrigger, sizeof(roamtrigger));
	if (err) {
		FUNC0(drvr, "WLC_SET_ROAM_TRIGGER error (%d)\n", err);
		goto roam_setup_done;
	}

	roam_delta[0] = FUNC4(WL_ROAM_DELTA);
	roam_delta[1] = FUNC4(BRCM_BAND_ALL);
	err = FUNC2(ifp, BRCMF_C_SET_ROAM_DELTA,
				     (void *)roam_delta, sizeof(roam_delta));
	if (err) {
		FUNC0(drvr, "WLC_SET_ROAM_DELTA error (%d)\n", err);
		goto roam_setup_done;
	}

roam_setup_done:
	return err;
}