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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int netdev_features_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int MACB_NETIF_LSO ; 
 int /*<<< orphan*/  MACB_TX_LEN_ALIGN ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static netdev_features_t FUNC8(struct sk_buff *skb,
					     struct net_device *dev,
					     netdev_features_t features)
{
	unsigned int nr_frags, f;
	unsigned int hdrlen;

	/* Validate LSO compatibility */

	/* there is only one buffer */
	if (!FUNC4(skb))
		return features;

	/* length of header */
	hdrlen = FUNC6(skb);
	if (FUNC1(skb)->protocol == IPPROTO_TCP)
		hdrlen += FUNC7(skb);

	/* For LSO:
	 * When software supplies two or more payload buffers all payload buffers
	 * apart from the last must be a multiple of 8 bytes in size.
	 */
	if (!FUNC0(FUNC3(skb) - hdrlen, MACB_TX_LEN_ALIGN))
		return features & ~MACB_NETIF_LSO;

	nr_frags = FUNC5(skb)->nr_frags;
	/* No need to check last fragment */
	nr_frags--;
	for (f = 0; f < nr_frags; f++) {
		const skb_frag_t *frag = &FUNC5(skb)->frags[f];

		if (!FUNC0(FUNC2(frag), MACB_TX_LEN_ALIGN))
			return features & ~MACB_NETIF_LSO;
	}
	return features;
}