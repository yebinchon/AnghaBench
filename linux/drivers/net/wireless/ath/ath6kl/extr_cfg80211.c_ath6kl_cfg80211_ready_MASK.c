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
struct ath6kl_vif {int /*<<< orphan*/  flags; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WLAN_CFG ; 
 int /*<<< orphan*/  WLAN_ENABLED ; 
 int /*<<< orphan*/  WMI_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct ath6kl_vif *vif)
{
	struct ath6kl *ar = vif->ar;

	if (!FUNC2(WMI_READY, &ar->flag)) {
		FUNC1("wmi is not ready\n");
		return false;
	}

	if (!FUNC2(WLAN_ENABLED, &vif->flags)) {
		FUNC0(ATH6KL_DBG_WLAN_CFG, "wlan disabled\n");
		return false;
	}

	return true;
}