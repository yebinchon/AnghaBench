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
struct sk_buff {scalar_t__ len; } ;
struct rmnet_priv {int /*<<< orphan*/  pcpu_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_pkts; } ;
struct rmnet_pcpu_stats {int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct rmnet_priv* FUNC0 (struct net_device*) ; 
 struct rmnet_pcpu_stats* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	struct rmnet_priv *priv = FUNC0(dev);
	struct rmnet_pcpu_stats *pcpu_ptr;

	pcpu_ptr = FUNC1(priv->pcpu_stats);

	FUNC2(&pcpu_ptr->syncp);
	pcpu_ptr->stats.rx_pkts++;
	pcpu_ptr->stats.rx_bytes += skb->len;
	FUNC3(&pcpu_ptr->syncp);
}