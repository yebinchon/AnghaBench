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
struct sk_buff {int dummy; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/  mcastpsq_lock; int /*<<< orphan*/  mcastpsq; int /*<<< orphan*/  sta_list_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTIM_EXPIRED ; 
 int /*<<< orphan*/  MCAST_AID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ath6kl_vif *vif)
{
	bool mcastq_empty = false;
	struct sk_buff *skb;
	struct ath6kl *ar = vif->ar;

	/*
	 * If there are no associated STAs, ignore the DTIM expiry event.
	 * There can be potential race conditions where the last associated
	 * STA may disconnect & before the host could clear the 'Indicate
	 * DTIM' request to the firmware, the firmware would have just
	 * indicated a DTIM expiry event. The race is between 'clear DTIM
	 * expiry cmd' going from the host to the firmware & the DTIM
	 * expiry event happening from the firmware to the host.
	 */
	if (!ar->sta_list_index)
		return;

	FUNC6(&ar->mcastpsq_lock);
	mcastq_empty = FUNC5(&ar->mcastpsq);
	FUNC7(&ar->mcastpsq_lock);

	if (mcastq_empty)
		return;

	/* set the STA flag to dtim_expired for the frame to go out */
	FUNC3(DTIM_EXPIRED, &vif->flags);

	FUNC6(&ar->mcastpsq_lock);
	while ((skb = FUNC4(&ar->mcastpsq)) != NULL) {
		FUNC7(&ar->mcastpsq_lock);

		FUNC0(skb, vif->ndev);

		FUNC6(&ar->mcastpsq_lock);
	}
	FUNC7(&ar->mcastpsq_lock);

	FUNC2(DTIM_EXPIRED, &vif->flags);

	/* clear the LSB of the BitMapCtl field of the TIM IE */
	FUNC1(ar->wmi, vif->fw_vif_idx, MCAST_AID, 0);
}