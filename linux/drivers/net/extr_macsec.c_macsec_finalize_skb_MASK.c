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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  ip_summed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, u8 icv_len, u8 hdr_len)
{
	skb->ip_summed = CHECKSUM_NONE;
	FUNC0(skb->data + hdr_len, skb->data, 2 * ETH_ALEN);
	FUNC2(skb, hdr_len);
	FUNC1(skb, skb->len - icv_len);
}