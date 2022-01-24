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
struct ath6kl_vif {int sme_state; int /*<<< orphan*/  fw_vif_idx; TYPE_1__* ar; int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; int /*<<< orphan*/  bssid; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 scalar_t__ ATH6KL_STATE_RECOVERY ; 
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  CONNECT_PEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SME_CONNECTED 130 
#define  SME_CONNECTING 129 
#define  SME_DISCONNECTED 128 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(struct ath6kl_vif *vif)
{
	FUNC1(vif);

	switch (vif->sme_state) {
	case SME_DISCONNECTED:
		break;
	case SME_CONNECTING:
		FUNC5(vif->ndev, vif->bssid, NULL, 0,
					NULL, 0,
					WLAN_STATUS_UNSPECIFIED_FAILURE,
					GFP_KERNEL);
		break;
	case SME_CONNECTED:
		FUNC6(vif->ndev, 0, NULL, 0, true, GFP_KERNEL);
		break;
	}

	if (vif->ar->state != ATH6KL_STATE_RECOVERY &&
	    (FUNC10(CONNECTED, &vif->flags) ||
	    FUNC10(CONNECT_PEND, &vif->flags)))
		FUNC3(vif->ar->wmi, vif->fw_vif_idx);

	vif->sme_state = SME_DISCONNECTED;
	FUNC7(CONNECTED, &vif->flags);
	FUNC7(CONNECT_PEND, &vif->flags);

	/* Stop netdev queues, needed during recovery */
	FUNC9(vif->ndev);
	FUNC8(vif->ndev);

	/* disable scanning */
	if (vif->ar->state != ATH6KL_STATE_RECOVERY &&
	    FUNC4(vif->ar->wmi, vif->fw_vif_idx, 0xFFFF,
				      0, 0, 0, 0, 0, 0, 0, 0, 0) != 0)
		FUNC2("failed to disable scan during stop\n");

	FUNC0(vif, true);
}