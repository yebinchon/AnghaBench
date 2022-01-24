#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_rate {scalar_t__ idx; int flags; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ar9170 {int dummy; } ;
struct TYPE_6__ {int* ri; void** rr; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac_control; void* phy_control; } ;
struct _carl9170_tx_superframe {TYPE_3__ s; TYPE_2__ f; } ;
typedef  void* __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int AR9170_TX_MAC_AGGR ; 
 int AR9170_TX_MAC_PROT_CTS ; 
 int AR9170_TX_MAC_PROT_RTS ; 
 int CARL9170_TX_MAX_RATES ; 
 int CARL9170_TX_SUPER_RI_AMPDU ; 
 int CARL9170_TX_SUPER_RI_ERP_PROT_S ; 
 int /*<<< orphan*/  CARL9170_TX_SUPER_RI_TRIES ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ; 
 int IEEE80211_TX_RC_MCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ar9170*,struct ieee80211_tx_rate*) ; 
 void* FUNC3 (struct ar9170*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*) ; 
 scalar_t__ FUNC4 (struct ar9170*,struct ieee80211_tx_rate*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ar9170 *ar,
				      struct ieee80211_tx_info *sinfo,
				      struct sk_buff *skb)
{
	struct ieee80211_tx_rate *txrate;
	struct ieee80211_tx_info *info;
	struct _carl9170_tx_superframe *txc = (void *) skb->data;
	int i;
	bool ampdu;
	bool no_ack;

	info = FUNC0(skb);
	ampdu = !!(info->flags & IEEE80211_TX_CTL_AMPDU);
	no_ack = !!(info->flags & IEEE80211_TX_CTL_NO_ACK);

	/* Set the rate control probe flag for all (sub-) frames.
	 * This is because the TX_STATS_AMPDU flag is only set on
	 * the last frame, so it has to be inherited.
	 */
	info->flags |= (sinfo->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);

	/* NOTE: For the first rate, the ERP & AMPDU flags are directly
	 * taken from mac_control. For all fallback rate, the firmware
	 * updates the mac_control flags from the rate info field.
	 */
	for (i = 0; i < CARL9170_TX_MAX_RATES; i++) {
		__le32 phy_set;

		txrate = &sinfo->control.rates[i];
		if (txrate->idx < 0)
			break;

		phy_set = FUNC3(ar, info, txrate);
		if (i == 0) {
			__le16 mac_tmp = FUNC5(0);

			/* first rate - part of the hw's frame header */
			txc->f.phy_control = phy_set;

			if (ampdu && txrate->flags & IEEE80211_TX_RC_MCS)
				mac_tmp |= FUNC5(AR9170_TX_MAC_AGGR);

			if (FUNC4(ar, txrate, ampdu, no_ack))
				mac_tmp |= FUNC5(AR9170_TX_MAC_PROT_RTS);
			else if (FUNC2(ar, txrate))
				mac_tmp |= FUNC5(AR9170_TX_MAC_PROT_CTS);

			txc->f.mac_control |= mac_tmp;
		} else {
			/* fallback rates are stored in the firmware's
			 * retry rate set array.
			 */
			txc->s.rr[i - 1] = phy_set;
		}

		FUNC1(CARL9170_TX_SUPER_RI_TRIES, txc->s.ri[i],
			txrate->count);

		if (FUNC4(ar, txrate, ampdu, no_ack))
			txc->s.ri[i] |= (AR9170_TX_MAC_PROT_RTS <<
				CARL9170_TX_SUPER_RI_ERP_PROT_S);
		else if (FUNC2(ar, txrate))
			txc->s.ri[i] |= (AR9170_TX_MAC_PROT_CTS <<
				CARL9170_TX_SUPER_RI_ERP_PROT_S);

		if (ampdu && (txrate->flags & IEEE80211_TX_RC_MCS))
			txc->s.ri[i] |= CARL9170_TX_SUPER_RI_AMPDU;
	}
}