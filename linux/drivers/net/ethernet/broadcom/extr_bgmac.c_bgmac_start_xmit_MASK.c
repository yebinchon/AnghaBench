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
struct net_device {int dummy; } ;
struct bgmac_dma_ring {int dummy; } ;
struct bgmac {struct bgmac_dma_ring* tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgmac*,struct bgmac_dma_ring*,struct sk_buff*) ; 
 struct bgmac* FUNC1 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC2(struct sk_buff *skb,
				    struct net_device *net_dev)
{
	struct bgmac *bgmac = FUNC1(net_dev);
	struct bgmac_dma_ring *ring;

	/* No QOS support yet */
	ring = &bgmac->tx_ring[0];
	return FUNC0(bgmac, ring, skb);
}