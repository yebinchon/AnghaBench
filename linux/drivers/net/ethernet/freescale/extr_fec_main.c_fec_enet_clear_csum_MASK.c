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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; scalar_t__ csum_start; scalar_t__ head; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ __sum16 ;
struct TYPE_2__ {scalar_t__ check; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sk_buff *skb, struct net_device *ndev)
{
	/* Only run for packets requiring a checksum. */
	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	if (FUNC3(FUNC2(skb, 0)))
		return -1;

	if (FUNC1(skb))
		FUNC0(skb)->check = 0;
	*(__sum16 *)(skb->head + skb->csum_start + skb->csum_offset) = 0;

	return 0;
}