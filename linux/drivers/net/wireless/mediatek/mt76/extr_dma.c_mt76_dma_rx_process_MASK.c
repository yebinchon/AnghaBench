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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ cb; } ;
struct mt76_queue {int buf_size; int buf_offset; struct sk_buff* rx_head; } ;
struct mt76_dev {struct mt76_queue* q_rx; TYPE_1__* drv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rx_skb ) (struct mt76_dev*,int,struct sk_buff*) ;} ;

/* Variables and functions */
 size_t MT_RXQ_MCU ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct mt76_queue*,unsigned char*,int,int) ; 
 unsigned char* FUNC5 (struct mt76_dev*,struct mt76_queue*,int,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76_dev*,struct mt76_queue*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76_dev*,int,struct sk_buff*) ; 

__attribute__((used)) static int
FUNC10(struct mt76_dev *dev, struct mt76_queue *q, int budget)
{
	int len, data_len, done = 0;
	struct sk_buff *skb;
	unsigned char *data;
	bool more;

	while (done < budget) {
		u32 info;

		data = FUNC5(dev, q, false, &len, &info, &more);
		if (!data)
			break;

		if (q->rx_head)
			data_len = q->buf_size;
		else
			data_len = FUNC0(q->buf_size);

		if (data_len < len + q->buf_offset) {
			FUNC3(q->rx_head);
			q->rx_head = NULL;

			FUNC7(data);
			continue;
		}

		if (q->rx_head) {
			FUNC4(dev, q, data, len, more);
			continue;
		}

		skb = FUNC2(data, q->buf_size);
		if (!skb) {
			FUNC7(data);
			continue;
		}
		FUNC8(skb, q->buf_offset);

		if (q == &dev->q_rx[MT_RXQ_MCU]) {
			u32 *rxfce = (u32 *)skb->cb;
			*rxfce = info;
		}

		FUNC1(skb, len);
		done++;

		if (more) {
			q->rx_head = skb;
			continue;
		}

		dev->drv->rx_skb(dev, q - dev->q_rx, skb);
	}

	FUNC6(dev, q);
	return done;
}