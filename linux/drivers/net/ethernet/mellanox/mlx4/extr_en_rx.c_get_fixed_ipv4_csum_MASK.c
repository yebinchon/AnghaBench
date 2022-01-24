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
struct sk_buff {int /*<<< orphan*/  csum; } ;
struct iphdr {scalar_t__ protocol; int ihl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  tot_len; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ IPPROTO_SCTP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(__wsum hw_checksum, struct sk_buff *skb,
			       struct iphdr *iph)
{
	__u16 length_for_csum = 0;
	__wsum csum_pseudo_header = 0;
	__u8 ipproto = iph->protocol;

	if (FUNC3(ipproto == IPPROTO_SCTP))
		return -1;

	length_for_csum = (FUNC0(iph->tot_len) - (iph->ihl << 2));
	csum_pseudo_header = FUNC2(iph->saddr, iph->daddr,
						length_for_csum, ipproto, 0);
	skb->csum = FUNC1(hw_checksum, csum_pseudo_header);
	return 0;
}