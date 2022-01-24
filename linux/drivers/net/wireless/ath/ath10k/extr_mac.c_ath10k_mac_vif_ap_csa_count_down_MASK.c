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
struct ieee80211_vif {int /*<<< orphan*/  csa_active; } ;
struct ath10k_vif {scalar_t__ vdev_type; int /*<<< orphan*/  is_up; struct ath10k* ar; struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WMI_SERVICE_BEACON_OFFLOAD ; 
 scalar_t__ WMI_VDEV_TYPE_AP ; 
 int FUNC1 (struct ath10k_vif*) ; 
 int FUNC2 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;
	struct ieee80211_vif *vif = arvif->vif;
	int ret;

	FUNC7(&arvif->ar->conf_mutex);

	if (FUNC0(!FUNC8(WMI_SERVICE_BEACON_OFFLOAD, ar->wmi.svc_map)))
		return;

	if (arvif->vdev_type != WMI_VDEV_TYPE_AP)
		return;

	if (!vif->csa_active)
		return;

	if (!arvif->is_up)
		return;

	if (!FUNC5(vif)) {
		FUNC6(vif);

		ret = FUNC1(arvif);
		if (ret)
			FUNC3(ar, "failed to update bcn tmpl during csa: %d\n",
				    ret);

		ret = FUNC2(arvif);
		if (ret)
			FUNC3(ar, "failed to update prb tmpl during csa: %d\n",
				    ret);
	} else {
		FUNC4(vif);
	}
}