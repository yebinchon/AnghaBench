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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  sk; } ;
struct rmnet_priv {TYPE_2__* pcpu_stats; int /*<<< orphan*/  mux_id; struct net_device* real_dev; } ;
struct rmnet_port {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_drops; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct rmnet_priv* FUNC2 (struct net_device*) ; 
 struct rmnet_port* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct rmnet_port*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct sk_buff *skb)
{
	struct net_device *orig_dev;
	struct rmnet_port *port;
	struct rmnet_priv *priv;
	u8 mux_id;

	FUNC6(skb->sk, 8);

	orig_dev = skb->dev;
	priv = FUNC2(orig_dev);
	skb->dev = priv->real_dev;
	mux_id = priv->mux_id;

	port = FUNC3(skb->dev);
	if (!port)
		goto drop;

	if (FUNC4(skb, port, mux_id, orig_dev))
		goto drop;

	FUNC5(skb, orig_dev);

	FUNC0(skb);
	return;

drop:
	FUNC7(priv->pcpu_stats->stats.tx_drops);
	FUNC1(skb);
}