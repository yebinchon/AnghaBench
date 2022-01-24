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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FTGMAC100_TXDES1_IP_CHKSUM ; 
 int /*<<< orphan*/  FTGMAC100_TXDES1_TCP_CHKSUM ; 
 int /*<<< orphan*/  FTGMAC100_TXDES1_UDP_CHKSUM ; 
#define  IPPROTO_IP 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC3(struct sk_buff *skb, u32 *csum_vlan)
{
	if (skb->protocol == FUNC0(ETH_P_IP)) {
		u8 ip_proto = FUNC1(skb)->protocol;

		*csum_vlan |= FTGMAC100_TXDES1_IP_CHKSUM;
		switch(ip_proto) {
		case IPPROTO_TCP:
			*csum_vlan |= FTGMAC100_TXDES1_TCP_CHKSUM;
			return true;
		case IPPROTO_UDP:
			*csum_vlan |= FTGMAC100_TXDES1_UDP_CHKSUM;
			return true;
		case IPPROTO_IP:
			return true;
		}
	}
	return FUNC2(skb) == 0;
}