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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_mac_tx_pause {int pause_id; int action; int /*<<< orphan*/  vdev_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {TYPE_1__ htt; int /*<<< orphan*/  hw; } ;
typedef  enum wmi_tlv_tx_pause_id { ____Placeholder_wmi_tlv_tx_pause_id } wmi_tlv_tx_pause_id ;
typedef  enum wmi_tlv_tx_pause_action { ____Placeholder_wmi_tlv_tx_pause_action } wmi_tlv_tx_pause_action ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  ath10k_mac_handle_tx_pause_iter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath10k_mac_tx_pause*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath10k *ar, u32 vdev_id,
				     enum wmi_tlv_tx_pause_id pause_id,
				     enum wmi_tlv_tx_pause_action action)
{
	struct ath10k_mac_tx_pause arg = {
		.vdev_id = vdev_id,
		.pause_id = pause_id,
		.action = action,
	};

	FUNC1(&ar->htt.tx_lock);
	FUNC0(ar->hw,
						   IEEE80211_IFACE_ITER_RESUME_ALL,
						   ath10k_mac_handle_tx_pause_iter,
						   &arg);
	FUNC2(&ar->htt.tx_lock);
}