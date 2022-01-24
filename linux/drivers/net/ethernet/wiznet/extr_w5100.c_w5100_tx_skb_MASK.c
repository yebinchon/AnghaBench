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
typedef  scalar_t__ u16 ;
struct w5100_priv {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  S0_CR_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct w5100_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct w5100_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct w5100_priv*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev, struct sk_buff *skb)
{
	struct w5100_priv *priv = FUNC2(ndev);
	u16 offset;

	offset = FUNC4(priv, FUNC0(priv));
	FUNC6(priv, offset, skb->data, skb->len);
	FUNC5(priv, FUNC0(priv), offset + skb->len);
	ndev->stats.tx_bytes += skb->len;
	ndev->stats.tx_packets++;
	FUNC1(skb);

	FUNC3(priv, S0_CR_SEND);
}