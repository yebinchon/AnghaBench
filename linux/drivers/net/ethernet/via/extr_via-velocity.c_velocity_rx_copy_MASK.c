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
struct velocity_info {int /*<<< orphan*/  netdev; } ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int rx_copybreak ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct sk_buff **rx_skb, int pkt_size,
			    struct velocity_info *vptr)
{
	int ret = -1;
	if (pkt_size < rx_copybreak) {
		struct sk_buff *new_skb;

		new_skb = FUNC0(vptr->netdev, pkt_size);
		if (new_skb) {
			new_skb->ip_summed = rx_skb[0]->ip_summed;
			FUNC1(*rx_skb, new_skb->data, pkt_size);
			*rx_skb = new_skb;
			ret = 0;
		}

	}
	return ret;
}