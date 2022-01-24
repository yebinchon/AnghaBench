#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int version; scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ NEXTHDR_UDP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline u8 FUNC2(struct sk_buff *skb)
{
	u8 val = 0;

	if (FUNC0(skb)->version == 4)
		val = (FUNC0(skb)->protocol == IPPROTO_UDP);
	else if (FUNC0(skb)->version == 6)
		val = (FUNC1(skb)->nexthdr == NEXTHDR_UDP);

	return val;
}