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
struct sk_buff {int dummy; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_CB_TXS_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 

void
FUNC1(struct mt76_dev *dev, struct sk_buff *skb,
			struct sk_buff_head *list)
{
	FUNC0(dev, skb, MT_TX_CB_TXS_DONE, list);
}