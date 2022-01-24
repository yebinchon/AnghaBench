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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC4(struct sk_buff *skb, bool is_encap_pkt)
{
	if (is_encap_pkt)
		return (FUNC1(skb) +
			FUNC0(skb) - skb->data);
	else
		return (FUNC2(skb) +
			FUNC3(skb) - skb->data);
}