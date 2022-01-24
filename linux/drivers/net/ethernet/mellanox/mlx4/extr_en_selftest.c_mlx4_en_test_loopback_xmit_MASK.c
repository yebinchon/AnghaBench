#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* dev; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 unsigned int MLX4_LOOPBACK_TEST_PAYLOAD ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,TYPE_1__*) ; 
 struct sk_buff* FUNC4 (TYPE_1__*,scalar_t__) ; 
 void* FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct mlx4_en_priv *priv)
{
	struct sk_buff *skb;
	struct ethhdr *ethh;
	unsigned char *packet;
	unsigned int packet_size = MLX4_LOOPBACK_TEST_PAYLOAD;
	unsigned int i;
	int err;


	/* build the pkt before xmit */
	skb = FUNC4(priv->dev, MLX4_LOOPBACK_TEST_PAYLOAD + ETH_HLEN + NET_IP_ALIGN);
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, NET_IP_ALIGN);

	ethh = FUNC5(skb, sizeof(struct ethhdr));
	packet = FUNC5(skb, packet_size);
	FUNC2(ethh->h_dest, priv->dev->dev_addr, ETH_ALEN);
	FUNC0(ethh->h_source);
	ethh->h_proto = FUNC1(ETH_P_ARP);
	FUNC7(skb);
	for (i = 0; i < packet_size; ++i)	/* fill our packet */
		packet[i] = (unsigned char)(i & 0xff);

	/* xmit the pkt */
	err = FUNC3(skb, priv->dev);
	return err;
}