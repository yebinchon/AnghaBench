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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bcm_sysport_tx_ring {int /*<<< orphan*/  index; } ;
struct bcm_sysport_priv {unsigned int per_port_num_tx_queues; struct bcm_sysport_tx_ring** ring_map; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct bcm_sysport_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static u16 FUNC7(struct net_device *dev, struct sk_buff *skb,
				    struct net_device *sb_dev)
{
	struct bcm_sysport_priv *priv = FUNC3(dev);
	u16 queue = FUNC5(skb);
	struct bcm_sysport_tx_ring *tx_ring;
	unsigned int q, port;

	if (!FUNC4(dev))
		return FUNC2(dev, skb, NULL);

	/* DSA tagging layer will have configured the correct queue */
	q = FUNC1(queue);
	port = FUNC0(queue);
	tx_ring = priv->ring_map[q + port * priv->per_port_num_tx_queues];

	if (FUNC6(!tx_ring))
		return FUNC2(dev, skb, NULL);

	return tx_ring->index;
}