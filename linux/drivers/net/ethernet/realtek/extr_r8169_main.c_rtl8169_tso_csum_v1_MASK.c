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
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct iphdr {scalar_t__ protocol; } ;
struct TYPE_2__ {int gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int TD0_IP_CS ; 
 int TD0_MSS_SHIFT ; 
 int TD0_TCP_CS ; 
 int TD0_UDP_CS ; 
 int TD_LSO ; 
 int /*<<< orphan*/  TD_MSS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, u32 *opts)
{
	u32 mss = FUNC3(skb)->gso_size;

	if (mss) {
		opts[0] |= TD_LSO;
		opts[0] |= FUNC2(mss, TD_MSS_MAX) << TD0_MSS_SHIFT;
	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		const struct iphdr *ip = FUNC1(skb);

		if (ip->protocol == IPPROTO_TCP)
			opts[0] |= TD0_IP_CS | TD0_TCP_CS;
		else if (ip->protocol == IPPROTO_UDP)
			opts[0] |= TD0_IP_CS | TD0_UDP_CS;
		else
			FUNC0(1);
	}
}