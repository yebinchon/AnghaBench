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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  prev; } ;
struct mt76_dev {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_CB_DMA_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*,struct sk_buff_head*) ; 

void FUNC4(struct mt76_dev *dev, struct sk_buff *skb)
{
	struct sk_buff_head list;

	if (!skb->prev) {
		FUNC1(dev->hw, skb);
		return;
	}

	FUNC2(dev, &list);
	FUNC0(dev, skb, MT_TX_CB_DMA_DONE, &list);
	FUNC3(dev, &list);
}