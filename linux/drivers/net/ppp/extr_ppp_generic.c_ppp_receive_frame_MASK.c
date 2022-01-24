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
struct sk_buff {scalar_t__ len; } ;
struct ppp {int dummy; } ;
struct channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ PPP_MP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*,struct sk_buff*,struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ppp*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC6(struct ppp *ppp, struct sk_buff *skb, struct channel *pch)
{
	/* note: a 0-length skb is used as an error indication */
	if (skb->len > 0) {
		FUNC5(skb);
#ifdef CONFIG_PPP_MULTILINK
		/* XXX do channel-level decompression here */
		if (PPP_PROTO(skb) == PPP_MP)
			ppp_receive_mp_frame(ppp, skb, pch);
		else
#endif /* CONFIG_PPP_MULTILINK */
			FUNC4(ppp, skb);
	} else {
		FUNC1(skb);
		FUNC2(ppp);
	}
}