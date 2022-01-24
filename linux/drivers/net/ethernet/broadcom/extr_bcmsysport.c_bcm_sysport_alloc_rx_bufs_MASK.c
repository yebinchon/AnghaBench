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
struct sk_buff {int dummy; } ;
struct bcm_sysport_priv {unsigned int num_rx_bds; struct bcm_sysport_cb* rx_cbs; } ;
struct bcm_sysport_cb {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct bcm_sysport_priv*,struct bcm_sysport_cb*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct bcm_sysport_priv *priv)
{
	struct bcm_sysport_cb *cb;
	struct sk_buff *skb;
	unsigned int i;

	for (i = 0; i < priv->num_rx_bds; i++) {
		cb = &priv->rx_cbs[i];
		skb = FUNC0(priv, cb);
		FUNC1(skb);
		if (!cb->skb)
			return -ENOMEM;
	}

	return 0;
}