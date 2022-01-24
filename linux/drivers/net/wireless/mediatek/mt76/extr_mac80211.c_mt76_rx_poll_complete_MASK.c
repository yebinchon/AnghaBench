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
struct napi_struct {int dummy; } ;
struct mt76_dev {int /*<<< orphan*/ * rx_skb; } ;
typedef  enum mt76_rxq_id { ____Placeholder_mt76_rxq_id } mt76_rxq_id ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct sk_buff_head*,struct napi_struct*) ; 

void FUNC5(struct mt76_dev *dev, enum mt76_rxq_id q,
			   struct napi_struct *napi)
{
	struct sk_buff_head frames;
	struct sk_buff *skb;

	FUNC1(&frames);

	while ((skb = FUNC0(&dev->rx_skb[q])) != NULL) {
		FUNC2(dev, skb);
		FUNC3(skb, &frames);
	}

	FUNC4(dev, &frames, napi);
}