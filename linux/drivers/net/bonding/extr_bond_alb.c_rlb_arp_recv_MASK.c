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
struct slave {int /*<<< orphan*/  dev; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct bonding {int /*<<< orphan*/  dev; } ;
struct arp_pkt {scalar_t__ op_code; } ;
typedef  int /*<<< orphan*/  _arp ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int RX_HANDLER_ANOTHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*,struct arp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*,struct arp_pkt*) ; 
 struct arp_pkt* FUNC4 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct arp_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(const struct sk_buff *skb, struct bonding *bond,
			struct slave *slave)
{
	struct arp_pkt *arp, _arp;

	if (skb->protocol != FUNC0(ETH_P_ARP))
		goto out;

	arp = FUNC4(skb, 0, sizeof(_arp), &_arp);
	if (!arp)
		goto out;

	/* We received an ARP from arp->ip_src.
	 * We might have used this IP address previously (on the bonding host
	 * itself or on a system that is bridged together with the bond).
	 * However, if arp->mac_src is different than what is stored in
	 * rx_hashtbl, some other host is now using the IP and we must prevent
	 * sending out client updates with this IP address and the old MAC
	 * address.
	 * Clean up all hash table entries that have this address as ip_src but
	 * have a different mac_src.
	 */
	FUNC2(bond, arp);

	if (arp->op_code == FUNC1(ARPOP_REPLY)) {
		/* update rx hash table for this ARP */
		FUNC3(bond, arp);
		FUNC5(bond->dev, slave->dev, "Server received an ARP Reply from client\n");
	}
out:
	return RX_HANDLER_ANOTHER;
}