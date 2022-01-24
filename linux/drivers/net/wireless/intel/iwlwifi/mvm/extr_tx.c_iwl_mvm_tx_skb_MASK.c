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
struct sk_buff_head {int dummy; } ;
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  cb; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {unsigned int gso_size; } ;

/* Variables and functions */
 scalar_t__ IWL_MVM_INVALID_STA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 int FUNC6 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_tx_info*,struct ieee80211_sta*) ; 
 int FUNC7 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_tx_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff_head*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 

int FUNC15(struct iwl_mvm *mvm, struct sk_buff *skb,
		   struct ieee80211_sta *sta)
{
	struct iwl_mvm_sta *mvmsta = FUNC5(sta);
	struct ieee80211_tx_info info;
	struct sk_buff_head mpdus_skbs;
	unsigned int payload_len;
	int ret;

	if (FUNC1(!mvmsta))
		return -1;

	if (FUNC1(mvmsta->sta_id == IWL_MVM_INVALID_STA))
		return -1;

	FUNC8(&info, skb->cb, sizeof(info));

	if (!FUNC9(skb))
		return FUNC6(mvm, skb, &info, sta);

	payload_len = FUNC12(skb) - FUNC13(skb) -
		FUNC14(skb) + skb->data_len;

	if (payload_len <= FUNC11(skb)->gso_size)
		return FUNC6(mvm, skb, &info, sta);

	FUNC3(&mpdus_skbs);

	ret = FUNC7(mvm, skb, &info, sta, &mpdus_skbs);
	if (ret)
		return ret;

	if (FUNC0(FUNC10(&mpdus_skbs)))
		return ret;

	while (!FUNC10(&mpdus_skbs)) {
		skb = FUNC2(&mpdus_skbs);

		ret = FUNC6(mvm, skb, &info, sta);
		if (ret) {
			FUNC4(&mpdus_skbs);
			return ret;
		}
	}

	return 0;
}