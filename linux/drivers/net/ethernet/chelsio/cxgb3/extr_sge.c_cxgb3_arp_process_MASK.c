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
typedef  int /*<<< orphan*/  tip ;
struct sk_buff {struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct port_info {scalar_t__ iscsi_ipv4addr; TYPE_1__ iscsic; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct arphdr {scalar_t__ ar_op; } ;
typedef  int /*<<< orphan*/  sip ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 struct arphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct net_device*,scalar_t__,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct port_info *pi, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct arphdr *arp;
	unsigned char *arp_ptr;
	unsigned char *sha;
	__be32 sip, tip;

	if (!dev)
		return;

	FUNC4(skb);
	arp = FUNC0(skb);

	if (arp->ar_op != FUNC2(ARPOP_REQUEST))
		return;

	arp_ptr = (unsigned char *)(arp + 1);
	sha = arp_ptr;
	arp_ptr += dev->addr_len;
	FUNC3(&sip, arp_ptr, sizeof(sip));
	arp_ptr += sizeof(sip);
	arp_ptr += dev->addr_len;
	FUNC3(&tip, arp_ptr, sizeof(tip));

	if (tip != pi->iscsi_ipv4addr)
		return;

	FUNC1(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
		 pi->iscsic.mac_addr, sha);

}