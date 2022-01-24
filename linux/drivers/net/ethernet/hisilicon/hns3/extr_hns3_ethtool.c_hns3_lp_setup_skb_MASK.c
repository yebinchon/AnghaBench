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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/ * h_dest; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 scalar_t__ HNS3_NIC_LB_DST_MAC_ADDR ; 
 unsigned int HNS3_NIC_LB_TEST_PACKET_SIZE ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hnae3_handle* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb)
{
#define	HNS3_NIC_LB_DST_MAC_ADDR	0x1f

	struct net_device *ndev = skb->dev;
	struct hnae3_handle *handle;
	unsigned char *packet;
	struct ethhdr *ethh;
	unsigned int i;

	FUNC5(skb, NET_IP_ALIGN);
	ethh = FUNC4(skb, sizeof(struct ethhdr));
	packet = FUNC4(skb, HNS3_NIC_LB_TEST_PACKET_SIZE);

	FUNC3(ethh->h_dest, ndev->dev_addr, ETH_ALEN);

	/* The dst mac addr of loopback packet is the same as the host'
	 * mac addr, the SSU component may loop back the packet to host
	 * before the packet reaches mac or serdes, which will defect
	 * the purpose of mac or serdes selftest.
	 */
	handle = FUNC1(ndev);
	if (handle->pdev->revision == 0x20)
		ethh->h_dest[5] += HNS3_NIC_LB_DST_MAC_ADDR;
	FUNC0(ethh->h_source);
	ethh->h_proto = FUNC2(ETH_P_ARP);
	FUNC6(skb);

	for (i = 0; i < HNS3_NIC_LB_TEST_PACKET_SIZE; i++)
		packet[i] = (unsigned char)(i & 0xff);
}