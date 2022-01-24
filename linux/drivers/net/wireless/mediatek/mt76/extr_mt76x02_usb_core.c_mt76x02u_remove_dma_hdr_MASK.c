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
struct mt76x02_txwi {int dummy; } ;

/* Variables and functions */
 scalar_t__ MT_DMA_HDR_LEN ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	int hdr_len;

	FUNC2(skb, sizeof(struct mt76x02_txwi) + MT_DMA_HDR_LEN);
	hdr_len = FUNC0(skb);
	if (hdr_len % 4)
		FUNC1(skb, 2);
}