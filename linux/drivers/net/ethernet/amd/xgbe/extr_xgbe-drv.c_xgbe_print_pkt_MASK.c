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
struct sk_buff {unsigned int len; int /*<<< orphan*/ * data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int,int,unsigned char*,int,int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *netdev, struct sk_buff *skb, bool tx_rx)
{
	struct ethhdr *eth = (struct ethhdr *)skb->data;
	unsigned char buffer[128];
	unsigned int i;

	FUNC2(netdev, "\n************** SKB dump ****************\n");

	FUNC2(netdev, "%s packet of %d bytes\n",
		   (tx_rx ? "TX" : "RX"), skb->len);

	FUNC2(netdev, "Dst MAC addr: %pM\n", eth->h_dest);
	FUNC2(netdev, "Src MAC addr: %pM\n", eth->h_source);
	FUNC2(netdev, "Protocol: %#06hx\n", FUNC3(eth->h_proto));

	for (i = 0; i < skb->len; i += 32) {
		unsigned int len = FUNC1(skb->len - i, 32U);

		FUNC0(&skb->data[i], len, 32, 1,
				   buffer, sizeof(buffer), false);
		FUNC2(netdev, "  %#06x: %s\n", i, buffer);
	}

	FUNC2(netdev, "\n************** SKB dump ****************\n");
}