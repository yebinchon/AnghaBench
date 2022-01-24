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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; int gso_type; } ;

/* Variables and functions */
 int SKB_GSO_TCPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 

__attribute__((used)) static u16 FUNC5(const struct sk_buff *skb)
{
	u16 tpd_req;
	u16 proto_hdr_len = 0;

	tpd_req = FUNC2(skb)->nr_frags + 1;

	if (FUNC1(skb)) {
		proto_hdr_len = FUNC3(skb) + FUNC4(skb);
		if (proto_hdr_len < FUNC0(skb))
			tpd_req++;
		if (FUNC2(skb)->gso_type & SKB_GSO_TCPV6)
			tpd_req++;
	}
	return tpd_req;
}