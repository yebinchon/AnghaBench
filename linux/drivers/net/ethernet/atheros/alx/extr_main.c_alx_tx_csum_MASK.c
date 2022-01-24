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
typedef  int u8 ;
struct sk_buff {scalar_t__ ip_summed; int csum_offset; } ;
struct alx_txd {int /*<<< orphan*/  word1; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EINVAL ; 
 int TPD_CXSUMOFFSET_SHIFT ; 
 int TPD_CXSUMSTART_SHIFT ; 
 int TPD_CXSUM_EN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct alx_txd *first)
{
	u8 cso, css;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	cso = FUNC1(skb);
	if (cso & 1)
		return -EINVAL;

	css = cso + skb->csum_offset;
	first->word1 |= FUNC0((cso >> 1) << TPD_CXSUMSTART_SHIFT);
	first->word1 |= FUNC0((css >> 1) << TPD_CXSUMOFFSET_SHIFT);
	first->word1 |= FUNC0(1 << TPD_CXSUM_EN_SHIFT);

	return 0;
}