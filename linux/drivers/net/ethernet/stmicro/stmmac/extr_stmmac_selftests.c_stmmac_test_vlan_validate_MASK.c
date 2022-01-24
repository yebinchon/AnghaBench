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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct udphdr {scalar_t__ dest; } ;
struct stmmachdr {scalar_t__ magic; } ;
struct stmmac_test_priv {scalar_t__ vlan_id; int ok; int /*<<< orphan*/  comp; TYPE_1__* packet; scalar_t__ double_vlan; } ;
struct sk_buff {scalar_t__ vlan_proto; scalar_t__ vlan_tci; } ;
struct packet_type {struct stmmac_test_priv* af_packet_priv; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct TYPE_2__ {int /*<<< orphan*/  dport; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  STMMAC_TEST_PKT_MAGIC ; 
 scalar_t__ STMMAC_TEST_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb,
				     struct net_device *ndev,
				     struct packet_type *pt,
				     struct net_device *orig_ndev)
{
	struct stmmac_test_priv *tpriv = pt->af_packet_priv;
	struct stmmachdr *shdr;
	struct ethhdr *ehdr;
	struct udphdr *uhdr;
	struct iphdr *ihdr;
	u16 proto;

	proto = tpriv->double_vlan ? ETH_P_8021AD : ETH_P_8021Q;

	skb = FUNC10(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (FUNC7(skb))
		goto out;
	if (FUNC6(skb) < (STMMAC_TEST_PKT_SIZE - ETH_HLEN))
		goto out;
	if (tpriv->vlan_id) {
		if (skb->vlan_proto != FUNC3(proto))
			goto out;
		if (skb->vlan_tci != tpriv->vlan_id)
			goto out;
	}

	ehdr = (struct ethhdr *)FUNC8(skb);
	if (!FUNC2(ehdr->h_dest, tpriv->packet->dst))
		goto out;

	ihdr = FUNC4(skb);
	if (tpriv->double_vlan)
		ihdr = (struct iphdr *)(FUNC9(skb) + 4);
	if (ihdr->protocol != IPPROTO_UDP)
		goto out;

	uhdr = (struct udphdr *)((u8 *)ihdr + 4 * ihdr->ihl);
	if (uhdr->dest != FUNC3(tpriv->packet->dport))
		goto out;

	shdr = (struct stmmachdr *)((u8 *)uhdr + sizeof(*uhdr));
	if (shdr->magic != FUNC1(STMMAC_TEST_PKT_MAGIC))
		goto out;

	tpriv->ok = true;
	FUNC0(&tpriv->comp);

out:
	FUNC5(skb);
	return 0;
}