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
struct brcmf_cfg80211_vif {int /*<<< orphan*/  sme_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_VIF_STATUS_READY ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct brcmf_cfg80211_vif *vif)
{
	if (!FUNC1(BRCMF_VIF_STATUS_READY, &vif->sme_state)) {
		FUNC0(INFO, "device is not ready : status (%lu)\n",
			  vif->sme_state);
		return false;
	}
	return true;
}