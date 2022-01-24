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
struct sk_buff {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_A_MSDU_PRESENT ; 
 int NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (int) ; 
 int* FUNC1 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(u8 *buf, int len)
{
	struct sk_buff *skb;
	int reserved = 0;
	struct ieee80211_hdr *hdr = (void *) buf;

	if (FUNC3(hdr->frame_control)) {
		u8 *qc = FUNC1(hdr);
		reserved += NET_IP_ALIGN;

		if (*qc & IEEE80211_QOS_CTL_A_MSDU_PRESENT)
			reserved += NET_IP_ALIGN;
	}

	if (FUNC2(hdr->frame_control))
		reserved += NET_IP_ALIGN;

	reserved = 32 + (reserved & NET_IP_ALIGN);

	skb = FUNC0(len + reserved);
	if (FUNC4(skb)) {
		FUNC6(skb, reserved);
		FUNC5(skb, buf, len);
	}

	return skb;
}