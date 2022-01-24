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
typedef  int u16 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int nr_frags; scalar_t__ gso_type; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int MAX_TX_BUF_LEN ; 
 int MAX_TX_BUF_SHIFT ; 
 scalar_t__ SKB_GSO_TCPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 TYPE_1__* FUNC4 (struct sk_buff const*) ; 
 int FUNC5 (struct sk_buff const*) ; 
 int FUNC6 (struct sk_buff const*) ; 

__attribute__((used)) static u16 FUNC7(const struct sk_buff *skb)
{
	int i = 0;
	u16 tpd_req = 1;
	u16 fg_size = 0;
	u16 proto_hdr_len = 0;

	for (i = 0; i < FUNC4(skb)->nr_frags; i++) {
		fg_size = FUNC1(&FUNC4(skb)->frags[i]);
		tpd_req += ((fg_size + MAX_TX_BUF_LEN - 1) >> MAX_TX_BUF_SHIFT);
	}

	if (FUNC3(skb)) {
		if (skb->protocol == FUNC0(ETH_P_IP) ||
		   (FUNC4(skb)->gso_type == SKB_GSO_TCPV6)) {
			proto_hdr_len = FUNC5(skb) +
					FUNC6(skb);
			if (proto_hdr_len < FUNC2(skb)) {
				tpd_req += ((FUNC2(skb) - proto_hdr_len +
					   MAX_TX_BUF_LEN - 1) >>
					   MAX_TX_BUF_SHIFT);
			}
		}

	}
	return tpd_req;
}