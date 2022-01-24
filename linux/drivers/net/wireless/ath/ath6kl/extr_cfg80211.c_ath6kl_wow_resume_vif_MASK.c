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
struct ath6kl_vif {scalar_t__ nw_type; int /*<<< orphan*/  ndev; int /*<<< orphan*/  fw_vif_idx; struct ath6kl* ar; int /*<<< orphan*/  flags; int /*<<< orphan*/  bmiss_time_t; int /*<<< orphan*/  listen_intvl_t; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/ * fw_capabilities; } ;

/* Variables and functions */
 scalar_t__ AP_NETWORK ; 
 int /*<<< orphan*/  ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER ; 
 int /*<<< orphan*/  NETDEV_MCAST_ALL_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath6kl_vif *vif)
{
	struct ath6kl *ar = vif->ar;
	int ret;

	if (vif->nw_type != AP_NETWORK) {
		ret = FUNC3(ar->wmi, vif->fw_vif_idx,
						0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
		if (ret)
			return ret;

		ret = FUNC1(ar->wmi, vif->fw_vif_idx,
						    vif->listen_intvl_t, 0);
		if (ret)
			return ret;

		ret = FUNC0(ar->wmi, vif->fw_vif_idx,
					       vif->bmiss_time_t, 0);
		if (ret)
			return ret;
	}

	if (!FUNC5(NETDEV_MCAST_ALL_OFF, &vif->flags) &&
	    FUNC5(ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER,
		     ar->fw_capabilities)) {
		ret = FUNC2(vif->ar->wmi,
						  vif->fw_vif_idx, true);
		if (ret)
			return ret;
	}

	FUNC4(vif->ndev);

	return 0;
}