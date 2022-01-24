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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  q_low_mark; int /*<<< orphan*/  q_high_mark; int /*<<< orphan*/  tail_align; int /*<<< orphan*/  head_align; int /*<<< orphan*/  aggregation_timeout; int /*<<< orphan*/  inactivity_timeout; } ;
struct cfhsi {TYPE_1__ cfg; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_AGGREGATION_TOUT ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_HEAD_ALIGN ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_INACTIVITY_TOUT ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_QHIGH_WATERMARK ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_QLOW_WATERMARK ; 
 int /*<<< orphan*/  __IFLA_CAIF_HSI_TAIL_ALIGN ; 
 struct cfhsi* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, const struct net_device *dev)
{
	struct cfhsi *cfhsi = FUNC0(dev);

	if (FUNC1(skb, __IFLA_CAIF_HSI_INACTIVITY_TOUT,
			cfhsi->cfg.inactivity_timeout) ||
	    FUNC1(skb, __IFLA_CAIF_HSI_AGGREGATION_TOUT,
			cfhsi->cfg.aggregation_timeout) ||
	    FUNC1(skb, __IFLA_CAIF_HSI_HEAD_ALIGN,
			cfhsi->cfg.head_align) ||
	    FUNC1(skb, __IFLA_CAIF_HSI_TAIL_ALIGN,
			cfhsi->cfg.tail_align) ||
	    FUNC1(skb, __IFLA_CAIF_HSI_QHIGH_WATERMARK,
			cfhsi->cfg.q_high_mark) ||
	    FUNC1(skb, __IFLA_CAIF_HSI_QLOW_WATERMARK,
			cfhsi->cfg.q_low_mark))
		return -EMSGSIZE;

	return 0;
}