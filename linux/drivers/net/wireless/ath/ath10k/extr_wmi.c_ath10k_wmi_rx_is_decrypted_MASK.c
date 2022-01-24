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
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_2__ {scalar_t__ sw_decrypt_mcast_mgmt; } ;
struct ath10k {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ath10k *ar,
				       struct ieee80211_hdr *hdr)
{
	if (!FUNC1(hdr->frame_control))
		return false;

	/* FW delivers WEP Shared Auth frame with Protected Bit set and
	 * encrypted payload. However in case of PMF it delivers decrypted
	 * frames with Protected Bit set.
	 */
	if (FUNC2(hdr->frame_control))
		return false;

	/* qca99x0 based FW delivers broadcast or multicast management frames
	 * (ex: group privacy action frames in mesh) as encrypted payload.
	 */
	if (FUNC3(FUNC0(hdr)) &&
	    ar->hw_params.sw_decrypt_mcast_mgmt)
		return false;

	return true;
}