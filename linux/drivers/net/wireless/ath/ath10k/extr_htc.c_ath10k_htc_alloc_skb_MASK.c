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
struct sk_buff {scalar_t__ data; } ;
struct ath10k_htc_hdr {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

struct sk_buff *FUNC4(struct ath10k *ar, int size)
{
	struct sk_buff *skb;

	skb = FUNC2(size + sizeof(struct ath10k_htc_hdr));
	if (!skb)
		return NULL;

	FUNC3(skb, sizeof(struct ath10k_htc_hdr));

	/* FW/HTC requires 4-byte aligned streams */
	if (!FUNC0((unsigned long)skb->data, 4))
		FUNC1(ar, "Unaligned HTC tx skb\n");

	return skb;
}