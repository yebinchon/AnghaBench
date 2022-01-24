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
typedef  size_t u8 ;
typedef  int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; } ;
struct ath6kl {int /*<<< orphan*/  mcastpsq_lock; int /*<<< orphan*/  mcastpsq; int /*<<< orphan*/  wmi; TYPE_1__* sta_list; } ;
struct TYPE_2__ {int sta_flags; } ;

/* Variables and functions */
 size_t AP_MAX_NUM_STA ; 
 int /*<<< orphan*/  DTIM_EXPIRED ; 
 int /*<<< orphan*/  MCAST_AID ; 
 int STA_PS_SLEEP ; 
 int WMI_DATA_HDR_FLAGS_MORE ; 
 int WMI_DATA_HDR_FLAGS_UAPSD ; 
 struct ath6kl_sta* FUNC0 (struct ath6kl_vif*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath6kl_sta*,struct ath6kl_vif*,struct sk_buff*,int*) ; 
 int FUNC2 (struct ath6kl_sta*,struct ath6kl_vif*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct ath6kl_vif *vif, struct sk_buff *skb,
				u32 *flags)
{
	struct ethhdr *datap = (struct ethhdr *) skb->data;
	struct ath6kl_sta *conn = NULL;
	bool ps_queued = false;
	struct ath6kl *ar = vif->ar;

	if (FUNC5(datap->h_dest)) {
		u8 ctr = 0;
		bool q_mcast = false;

		for (ctr = 0; ctr < AP_MAX_NUM_STA; ctr++) {
			if (ar->sta_list[ctr].sta_flags & STA_PS_SLEEP) {
				q_mcast = true;
				break;
			}
		}

		if (q_mcast) {
			/*
			 * If this transmit is not because of a Dtim Expiry
			 * q it.
			 */
			if (!FUNC10(DTIM_EXPIRED, &vif->flags)) {
				bool is_mcastq_empty = false;

				FUNC8(&ar->mcastpsq_lock);
				is_mcastq_empty =
					FUNC6(&ar->mcastpsq);
				FUNC7(&ar->mcastpsq, skb);
				FUNC9(&ar->mcastpsq_lock);

				/*
				 * If this is the first Mcast pkt getting
				 * queued indicate to the target to set the
				 * BitmapControl LSB of the TIM IE.
				 */
				if (is_mcastq_empty)
					FUNC3(ar->wmi,
							       vif->fw_vif_idx,
							       MCAST_AID, 1);

				ps_queued = true;
			} else {
				/*
				 * This transmit is because of Dtim expiry.
				 * Determine if MoreData bit has to be set.
				 */
				FUNC8(&ar->mcastpsq_lock);
				if (!FUNC6(&ar->mcastpsq))
					*flags |= WMI_DATA_HDR_FLAGS_MORE;
				FUNC9(&ar->mcastpsq_lock);
			}
		}
	} else {
		conn = FUNC0(vif, datap->h_dest);
		if (!conn) {
			FUNC4(skb);

			/* Inform the caller that the skb is consumed */
			return true;
		}

		if (conn->sta_flags & STA_PS_SLEEP) {
			ps_queued = FUNC2(conn,
						vif, skb, flags);
			if (!(*flags & WMI_DATA_HDR_FLAGS_UAPSD))
				ps_queued = FUNC1(conn,
						vif, skb, flags);
		}
	}
	return ps_queued;
}