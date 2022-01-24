#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genevehdr {scalar_t__ ver; scalar_t__ proto_type; int opt_len; } ;
struct geneve_sock {int dummy; } ;
struct geneve_dev {TYPE_2__* dev; int /*<<< orphan*/  net; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 scalar_t__ GENEVE_BASE_HLEN ; 
 scalar_t__ GENEVE_VER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct genevehdr* FUNC1 (struct sk_buff*) ; 
 struct geneve_dev* FUNC2 (struct geneve_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct geneve_dev*,struct geneve_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 struct geneve_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct genevehdr *geneveh;
	struct geneve_dev *geneve;
	struct geneve_sock *gs;
	int opts_len;

	/* Need UDP and Geneve header to be present */
	if (FUNC10(!FUNC8(skb, GENEVE_BASE_HLEN)))
		goto drop;

	/* Return packets with reserved bits set */
	geneveh = FUNC1(skb);
	if (FUNC10(geneveh->ver != GENEVE_VER))
		goto drop;

	if (FUNC10(geneveh->proto_type != FUNC4(ETH_P_TEB)))
		goto drop;

	gs = FUNC9(sk);
	if (!gs)
		goto drop;

	geneve = FUNC2(gs, skb);
	if (!geneve)
		goto drop;

	opts_len = geneveh->opt_len * 4;
	if (FUNC5(skb, GENEVE_BASE_HLEN + opts_len,
				 FUNC4(ETH_P_TEB),
				 !FUNC7(geneve->net, FUNC0(geneve->dev)))) {
		geneve->dev->stats.rx_dropped++;
		goto drop;
	}

	FUNC3(geneve, gs, skb);
	return 0;

drop:
	/* Consume bad packet */
	FUNC6(skb);
	return 0;
}