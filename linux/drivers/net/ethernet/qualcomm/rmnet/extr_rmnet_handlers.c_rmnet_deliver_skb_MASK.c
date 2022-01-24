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
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; } ;
struct rmnet_priv {int /*<<< orphan*/  gro_cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct rmnet_priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct sk_buff *skb)
{
	struct rmnet_priv *priv = FUNC1(skb->dev);

	FUNC4(skb);
	FUNC3(skb);
	FUNC2(skb, skb->dev);

	skb->pkt_type = PACKET_HOST;
	FUNC5(skb, 0);
	FUNC0(&priv->gro_cells, skb);
}