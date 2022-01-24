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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 scalar_t__ WMI_SKB_HEADROOM ; 
 struct sk_buff* FUNC1 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

struct sk_buff *FUNC7(struct ath10k *ar, u32 len)
{
	struct sk_buff *skb;
	u32 round_len = FUNC4(len, 4);

	skb = FUNC1(ar, WMI_SKB_HEADROOM + round_len);
	if (!skb)
		return NULL;

	FUNC6(skb, WMI_SKB_HEADROOM);
	if (!FUNC0((unsigned long)skb->data, 4))
		FUNC2(ar, "Unaligned WMI skb\n");

	FUNC5(skb, round_len);
	FUNC3(skb->data, 0, round_len);

	return skb;
}