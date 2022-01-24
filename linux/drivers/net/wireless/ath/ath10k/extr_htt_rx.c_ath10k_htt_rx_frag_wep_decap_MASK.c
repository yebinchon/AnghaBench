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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_WEP_ICV_LEN ; 
 int IEEE80211_WEP_IV_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
					u16 head_len,
					u16 hdr_len)
{
	u8 *orig_hdr;

	orig_hdr = skb->data;

	FUNC0(orig_hdr + IEEE80211_WEP_IV_LEN,
		orig_hdr, head_len + hdr_len);
	FUNC1(skb, IEEE80211_WEP_IV_LEN);
	FUNC2(skb, skb->len - IEEE80211_WEP_ICV_LEN);
	return 0;
}