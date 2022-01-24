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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_thermal_device {int /*<<< orphan*/ * fw_trips_index; scalar_t__ tzone; } ;
struct iwl_mvm {struct iwl_mvm_thermal_device tz_device; int /*<<< orphan*/  status; } ;
struct iwl_dts_measurement_notif_v2 {int /*<<< orphan*/  threshold_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int IWL_MAX_DTS_TRIPS ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_CTKILL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int) ; 
 int FUNC7 (struct iwl_rx_packet*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC9 (struct iwl_rx_cmd_buffer*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC12(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC9(rxb);
	struct iwl_dts_measurement_notif_v2 *notif_v2;
	int len = FUNC7(pkt);
	int temp;
	u32 ths_crossed;

	/* the notification is handled synchronously in ctkill, so skip here */
	if (FUNC10(IWL_MVM_STATUS_HW_CTKILL, &mvm->status))
		return;

	temp = FUNC5(mvm, pkt);

	if (!FUNC4(mvm)) {
		if (temp >= 0)
			FUNC6(mvm, temp);
		return;
	}

	if (FUNC3(len < sizeof(*notif_v2))) {
		FUNC1(mvm, "Invalid DTS_MEASUREMENT_NOTIFICATION\n");
		return;
	}

	notif_v2 = (void *)pkt->data;
	ths_crossed = FUNC8(notif_v2->threshold_idx);

	/* 0xFF in ths_crossed means the notification is not related
	 * to a trip, so we can ignore it here.
	 */
	if (ths_crossed == 0xFF)
		return;

	FUNC0(mvm, "Temp = %d Threshold crossed = %d\n",
		       temp, ths_crossed);

#ifdef CONFIG_THERMAL
	if (WARN_ON(ths_crossed >= IWL_MAX_DTS_TRIPS))
		return;

	if (mvm->tz_device.tzone) {
		struct iwl_mvm_thermal_device *tz_dev = &mvm->tz_device;

		thermal_notify_framework(tz_dev->tzone,
					 tz_dev->fw_trips_index[ths_crossed]);
	}
#endif /* CONFIG_THERMAL */
}