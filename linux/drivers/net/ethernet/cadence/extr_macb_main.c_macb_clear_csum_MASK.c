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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; } ;
typedef  scalar_t__ __sum16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct sk_buff *skb)
{
	/* no change for packets without checksum offloading */
	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	/* make sure we can modify the header */
	if (FUNC2(FUNC1(skb, 0)))
		return -1;

	/* initialize checksum field
	 * This is required - at least for Zynq, which otherwise calculates
	 * wrong UDP header checksums for UDP packets with UDP data len <=2
	 */
	*(__sum16 *)(FUNC0(skb) + skb->csum_offset) = 0;
	return 0;
}