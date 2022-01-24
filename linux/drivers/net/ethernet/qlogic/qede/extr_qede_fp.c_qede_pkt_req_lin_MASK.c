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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int ETH_TX_MAX_BDS_PER_NON_LSO_PACKET ; 
 int XMIT_ENC ; 
 int XMIT_LSO ; 
 int FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC3(struct sk_buff *skb, u8 xmit_type)
{
	int allowed_frags = ETH_TX_MAX_BDS_PER_NON_LSO_PACKET - 1;

	if (xmit_type & XMIT_LSO) {
		int hlen;

		hlen = FUNC0(skb, xmit_type & XMIT_ENC);

		/* linear payload would require its own BD */
		if (FUNC1(skb) > hlen)
			allowed_frags--;
	}

	return (FUNC2(skb)->nr_frags > allowed_frags);
}