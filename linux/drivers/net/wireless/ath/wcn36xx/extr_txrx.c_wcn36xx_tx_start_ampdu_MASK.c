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
struct wcn36xx_sta {scalar_t__* ampdu_state; int /*<<< orphan*/  ampdu_lock; scalar_t__ non_agg_frame_ct; } ;
struct wcn36xx {TYPE_1__* hw; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_2__ {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_AC_VO ; 
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WCN36XX_AMPDU_NONE ; 
 scalar_t__ WCN36XX_AMPDU_START ; 
 scalar_t__ WCN36XX_AMPDU_START_THRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t* FUNC2 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC8 (struct wcn36xx_sta*) ; 

__attribute__((used)) static void FUNC9(struct wcn36xx *wcn,
				   struct wcn36xx_sta *sta_priv,
				   struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_sta *sta;
	u8 *qc, tid;

	if (!FUNC1(&wcn->hw->conf))
		return;

	sta = FUNC8(sta_priv);

	if (FUNC0(!FUNC3(hdr->frame_control)))
		return;

	if (FUNC5(skb) == IEEE80211_AC_VO)
		return;

	qc = FUNC2(hdr);
	tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;

	FUNC6(&sta_priv->ampdu_lock);
	if (sta_priv->ampdu_state[tid] != WCN36XX_AMPDU_NONE)
		goto out_unlock;

	if (sta_priv->non_agg_frame_ct++ >= WCN36XX_AMPDU_START_THRESH) {
		sta_priv->ampdu_state[tid] = WCN36XX_AMPDU_START;
		sta_priv->non_agg_frame_ct = 0;
		FUNC4(sta, tid, 0);
	}
out_unlock:
	FUNC7(&sta_priv->ampdu_lock);
}