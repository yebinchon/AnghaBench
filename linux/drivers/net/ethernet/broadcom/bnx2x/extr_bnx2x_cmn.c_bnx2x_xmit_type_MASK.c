#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct bnx2x {int dummy; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __be16 ;
struct TYPE_8__ {int version; scalar_t__ protocol; } ;
struct TYPE_7__ {scalar_t__ nexthdr; } ;
struct TYPE_6__ {scalar_t__ protocol; } ;
struct TYPE_5__ {scalar_t__ nexthdr; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 int XMIT_CSUM_ENC ; 
 int XMIT_CSUM_ENC_V4 ; 
 int XMIT_CSUM_ENC_V6 ; 
 int XMIT_CSUM_TCP ; 
 int XMIT_CSUM_V4 ; 
 int XMIT_CSUM_V6 ; 
 int XMIT_GSO_ENC_V4 ; 
 int XMIT_GSO_ENC_V6 ; 
 int XMIT_GSO_V4 ; 
 int XMIT_GSO_V6 ; 
 int XMIT_PLAIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC9(struct bnx2x *bp, struct sk_buff *skb)
{
	u32 rc;
	__u8 prot = 0;
	__be16 protocol;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return XMIT_PLAIN;

	protocol = FUNC8(skb);
	if (protocol == FUNC1(ETH_P_IPV6)) {
		rc = XMIT_CSUM_V6;
		prot = FUNC5(skb)->nexthdr;
	} else {
		rc = XMIT_CSUM_V4;
		prot = FUNC4(skb)->protocol;
	}

	if (!FUNC0(bp) && skb->encapsulation) {
		if (FUNC2(skb)->version == 6) {
			rc |= XMIT_CSUM_ENC_V6;
			if (FUNC3(skb)->nexthdr == IPPROTO_TCP)
				rc |= XMIT_CSUM_TCP;
		} else {
			rc |= XMIT_CSUM_ENC_V4;
			if (FUNC2(skb)->protocol == IPPROTO_TCP)
				rc |= XMIT_CSUM_TCP;
		}
	}
	if (prot == IPPROTO_TCP)
		rc |= XMIT_CSUM_TCP;

	if (FUNC6(skb)) {
		if (FUNC7(skb)) {
			rc |= (XMIT_GSO_V6 | XMIT_CSUM_TCP);
			if (rc & XMIT_CSUM_ENC)
				rc |= XMIT_GSO_ENC_V6;
		} else {
			rc |= (XMIT_GSO_V4 | XMIT_CSUM_TCP);
			if (rc & XMIT_CSUM_ENC)
				rc |= XMIT_GSO_ENC_V4;
		}
	}

	return rc;
}