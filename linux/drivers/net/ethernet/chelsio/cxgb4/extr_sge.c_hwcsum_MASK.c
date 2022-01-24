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
typedef  int u64 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ csum_offset; scalar_t__ encapsulation; } ;
typedef  enum chip_type { ____Placeholder_chip_type } chip_type ;
struct TYPE_8__ {int version; int protocol; } ;
struct TYPE_7__ {int nexthdr; } ;
struct TYPE_6__ {int version; int protocol; } ;
struct TYPE_5__ {int nexthdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ CHELSIO_T5 ; 
 int ETH_HLEN ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int TXPKT_L4CSUM_DIS_F ; 
 int TX_CSUM_TCPIP ; 
 int TX_CSUM_TCPIP6 ; 
 int TX_CSUM_UDPIP ; 
 int TX_CSUM_UDPIP6 ; 
 TYPE_4__* FUNC7 (struct sk_buff const*) ; 
 TYPE_3__* FUNC8 (struct sk_buff const*) ; 
 TYPE_2__* FUNC9 (struct sk_buff const*) ; 
 TYPE_1__* FUNC10 (struct sk_buff const*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (struct sk_buff const*) ; 
 int FUNC13 (struct sk_buff const*) ; 
 int FUNC14 (struct sk_buff const*) ; 
 int FUNC15 (struct sk_buff const*) ; 
 int FUNC16 (struct sk_buff const*) ; 

__attribute__((used)) static u64 FUNC17(enum chip_type chip, const struct sk_buff *skb)
{
	int csum_type;
	bool inner_hdr_csum = false;
	u16 proto, ver;

	if (skb->encapsulation &&
	    (FUNC0(chip) > CHELSIO_T5))
		inner_hdr_csum = true;

	if (inner_hdr_csum) {
		ver = FUNC7(skb)->version;
		proto = (ver == 4) ? FUNC7(skb)->protocol :
			FUNC8(skb)->nexthdr;
	} else {
		ver = FUNC9(skb)->version;
		proto = (ver == 4) ? FUNC9(skb)->protocol :
			FUNC10(skb)->nexthdr;
	}

	if (ver == 4) {
		if (proto == IPPROTO_TCP)
			csum_type = TX_CSUM_TCPIP;
		else if (proto == IPPROTO_UDP)
			csum_type = TX_CSUM_UDPIP;
		else {
nocsum:			/*
			 * unknown protocol, disable HW csum
			 * and hope a bad packet is detected
			 */
			return TXPKT_L4CSUM_DIS_F;
		}
	} else {
		/*
		 * this doesn't work with extension headers
		 */
		if (proto == IPPROTO_TCP)
			csum_type = TX_CSUM_TCPIP6;
		else if (proto == IPPROTO_UDP)
			csum_type = TX_CSUM_UDPIP6;
		else
			goto nocsum;
	}

	if (FUNC11(csum_type >= TX_CSUM_TCPIP)) {
		int eth_hdr_len, l4_len;
		u64 hdr_len;

		if (inner_hdr_csum) {
			/* This allows checksum offload for all encapsulated
			 * packets like GRE etc..
			 */
			l4_len = FUNC12(skb);
			eth_hdr_len = FUNC13(skb) - ETH_HLEN;
		} else {
			l4_len = FUNC14(skb);
			eth_hdr_len = FUNC15(skb) - ETH_HLEN;
		}
		hdr_len = FUNC6(l4_len);

		if (FUNC0(chip) <= CHELSIO_T5)
			hdr_len |= FUNC5(eth_hdr_len);
		else
			hdr_len |= FUNC1(eth_hdr_len);
		return FUNC4(csum_type) | hdr_len;
	} else {
		int start = FUNC16(skb);

		return FUNC4(csum_type) |
			FUNC3(start) |
			FUNC2(start + skb->csum_offset);
	}
}