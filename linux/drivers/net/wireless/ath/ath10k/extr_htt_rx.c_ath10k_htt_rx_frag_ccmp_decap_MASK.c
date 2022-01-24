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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int* data; scalar_t__ len; } ;

/* Variables and functions */
 int ATH10K_IEEE80211_EXTIV ; 
 int EINVAL ; 
 int IEEE80211_CCMP_HDR_LEN ; 
 scalar_t__ IEEE80211_CCMP_MIC_LEN ; 
 int IEEE80211_WEP_IV_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
					 u16 head_len,
					 u16 hdr_len)
{
	u8 *ivp, *orig_hdr;

	orig_hdr = skb->data;
	ivp = orig_hdr + hdr_len + head_len;

	/* the ExtIV bit is always set to 1 for CCMP */
	if (!(ivp[IEEE80211_WEP_IV_LEN - 1] & ATH10K_IEEE80211_EXTIV))
		return -EINVAL;

	FUNC2(skb, skb->len - IEEE80211_CCMP_MIC_LEN);
	FUNC0(orig_hdr + IEEE80211_CCMP_HDR_LEN, orig_hdr, head_len + hdr_len);
	FUNC1(skb, IEEE80211_CCMP_HDR_LEN);
	return 0;
}