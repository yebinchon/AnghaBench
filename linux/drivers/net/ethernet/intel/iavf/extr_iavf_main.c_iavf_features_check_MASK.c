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
struct sk_buff {scalar_t__ ip_summed; size_t data; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int NETIF_F_CSUM_MASK ; 
 int NETIF_F_GSO_MASK ; 
 size_t FUNC0 (struct sk_buff*) ; 
 size_t FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 size_t FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 size_t FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static netdev_features_t FUNC6(struct sk_buff *skb,
					     struct net_device *dev,
					     netdev_features_t features)
{
	size_t len;

	/* No point in doing any of this if neither checksum nor GSO are
	 * being requested for this frame.  We can rule out both by just
	 * checking for CHECKSUM_PARTIAL
	 */
	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return features;

	/* We cannot support GSO if the MSS is going to be less than
	 * 64 bytes.  If it is then we need to drop support for GSO.
	 */
	if (FUNC2(skb) && (FUNC4(skb)->gso_size < 64))
		features &= ~NETIF_F_GSO_MASK;

	/* MACLEN can support at most 63 words */
	len = FUNC3(skb) - skb->data;
	if (len & ~(63 * 2))
		goto out_err;

	/* IPLEN and EIPLEN can support at most 127 dwords */
	len = FUNC5(skb) - FUNC3(skb);
	if (len & ~(127 * 4))
		goto out_err;

	if (skb->encapsulation) {
		/* L4TUNLEN can support 127 words */
		len = FUNC0(skb) - FUNC5(skb);
		if (len & ~(127 * 2))
			goto out_err;

		/* IPLEN can support at most 127 dwords */
		len = FUNC1(skb) -
		      FUNC0(skb);
		if (len & ~(127 * 4))
			goto out_err;
	}

	/* No need to validate L4LEN as TCP is the only protocol with a
	 * a flexible value and we support all possible values supported
	 * by TCP, which is at most 15 dwords
	 */

	return features;
out_err:
	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
}