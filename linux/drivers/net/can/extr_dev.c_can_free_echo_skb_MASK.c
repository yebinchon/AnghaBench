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
struct net_device {int dummy; } ;
struct can_priv {unsigned int echo_skb_max; int /*<<< orphan*/ ** echo_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev, unsigned int idx)
{
	struct can_priv *priv = FUNC2(dev);

	FUNC0(idx >= priv->echo_skb_max);

	if (priv->echo_skb[idx]) {
		FUNC1(priv->echo_skb[idx]);
		priv->echo_skb[idx] = NULL;
	}
}