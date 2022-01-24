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
struct sk_buff {scalar_t__ ip_summed; } ;
struct netfront_info {int /*<<< orphan*/  rx_gso_checksum_fixup; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct sk_buff *skb)
{
	bool recalculate_partial_csum = false;

	/*
	 * A GSO SKB must be CHECKSUM_PARTIAL. However some buggy
	 * peers can fail to set NETRXF_csum_blank when sending a GSO
	 * frame. In this case force the SKB to CHECKSUM_PARTIAL and
	 * recalculate the partial checksum.
	 */
	if (skb->ip_summed != CHECKSUM_PARTIAL && FUNC3(skb)) {
		struct netfront_info *np = FUNC1(dev);
		FUNC0(&np->rx_gso_checksum_fixup);
		skb->ip_summed = CHECKSUM_PARTIAL;
		recalculate_partial_csum = true;
	}

	/* A non-CHECKSUM_PARTIAL SKB does not require setup. */
	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	return FUNC2(skb, recalculate_partial_csum);
}