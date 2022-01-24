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
struct stmmac_test_priv {int ok; int /*<<< orphan*/  comp; TYPE_1__* packet; } ;
struct sk_buff {int dummy; } ;
struct packet_type {struct stmmac_test_priv* af_packet_priv; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct arphdr {scalar_t__ ar_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 struct arphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				    struct net_device *ndev,
				    struct packet_type *pt,
				    struct net_device *orig_ndev)
{
	struct stmmac_test_priv *tpriv = pt->af_packet_priv;
	struct ethhdr *ehdr;
	struct arphdr *ahdr;

	ehdr = (struct ethhdr *)FUNC5(skb);
	if (!FUNC2(ehdr->h_dest, tpriv->packet->src))
		goto out;

	ahdr = FUNC0(skb);
	if (ahdr->ar_op != FUNC3(ARPOP_REPLY))
		goto out;

	tpriv->ok = true;
	FUNC1(&tpriv->comp);
out:
	FUNC4(skb);
	return 0;
}