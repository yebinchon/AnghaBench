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
typedef  int u32 ;
struct wmi_roam_ev_arg {int /*<<< orphan*/  rssi; int /*<<< orphan*/  reason; int /*<<< orphan*/  vdev_id; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;
typedef  void* s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
#define  WMI_ROAM_REASON_BEACON_MISS 132 
#define  WMI_ROAM_REASON_BETTER_AP 131 
#define  WMI_ROAM_REASON_HO_FAILED 130 
#define  WMI_ROAM_REASON_LOW_RSSI 129 
 int WMI_ROAM_REASON_MAX ; 
#define  WMI_ROAM_REASON_SUITABLE_AP_FOUND 128 
 scalar_t__ WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int,...) ; 
 int FUNC4 (struct ath10k*,struct sk_buff*,struct wmi_roam_ev_arg*) ; 

void FUNC5(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_roam_ev_arg arg = {};
	int ret;
	u32 vdev_id;
	u32 reason;
	s32 rssi;

	ret = FUNC4(ar, skb, &arg);
	if (ret) {
		FUNC3(ar, "failed to parse roam event: %d\n", ret);
		return;
	}

	vdev_id = FUNC0(arg.vdev_id);
	reason = FUNC0(arg.reason);
	rssi = FUNC0(arg.rssi);
	rssi += WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT;

	FUNC1(ar, ATH10K_DBG_WMI,
		   "wmi roam event vdev %u reason 0x%08x rssi %d\n",
		   vdev_id, reason, rssi);

	if (reason >= WMI_ROAM_REASON_MAX)
		FUNC3(ar, "ignoring unknown roam event reason %d on vdev %i\n",
			    reason, vdev_id);

	switch (reason) {
	case WMI_ROAM_REASON_BEACON_MISS:
		FUNC2(ar, vdev_id);
		break;
	case WMI_ROAM_REASON_BETTER_AP:
	case WMI_ROAM_REASON_LOW_RSSI:
	case WMI_ROAM_REASON_SUITABLE_AP_FOUND:
	case WMI_ROAM_REASON_HO_FAILED:
		FUNC3(ar, "ignoring not implemented roam event reason %d on vdev %i\n",
			    reason, vdev_id);
		break;
	}
}