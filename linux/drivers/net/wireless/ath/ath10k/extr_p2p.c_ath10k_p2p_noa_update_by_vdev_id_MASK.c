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
typedef  int /*<<< orphan*/  u32 ;
struct wmi_p2p_noa_info {int dummy; } ;
struct ath10k_p2p_noa_arg {struct wmi_p2p_noa_info const* noa; int /*<<< orphan*/  vdev_id; } ;
struct ath10k {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  ath10k_p2p_noa_update_vdev_iter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath10k_p2p_noa_arg*) ; 

void FUNC1(struct ath10k *ar, u32 vdev_id,
				      const struct wmi_p2p_noa_info *noa)
{
	struct ath10k_p2p_noa_arg arg = {
		.vdev_id = vdev_id,
		.noa = noa,
	};

	FUNC0(ar->hw,
						   IEEE80211_IFACE_ITER_NORMAL,
						   ath10k_p2p_noa_update_vdev_iter,
						   &arg);
}