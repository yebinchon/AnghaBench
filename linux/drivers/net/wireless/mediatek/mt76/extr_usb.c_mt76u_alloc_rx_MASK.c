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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_queue {int ndesc; int /*<<< orphan*/ * entry; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  lock; } ;
struct mt76_dev {int /*<<< orphan*/  dev; struct mt76_queue* q_rx; struct mt76_usb usb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCU_RESP_URB_SIZE ; 
 int MT_NUM_RX_ENTRIES ; 
 size_t MT_RXQ_MAIN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt76_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mt76_dev *dev)
{
	struct mt76_usb *usb = &dev->usb;
	struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
	int i, err;

	usb->mcu.data = FUNC1(dev->dev, MCU_RESP_URB_SIZE, GFP_KERNEL);
	if (!usb->mcu.data)
		return -ENOMEM;

	FUNC4(&q->lock);
	q->entry = FUNC0(dev->dev,
				MT_NUM_RX_ENTRIES, sizeof(*q->entry),
				GFP_KERNEL);
	if (!q->entry)
		return -ENOMEM;

	q->ndesc = MT_NUM_RX_ENTRIES;
	q->buf_size = PAGE_SIZE;

	for (i = 0; i < q->ndesc; i++) {
		err = FUNC2(dev, &q->entry[i]);
		if (err < 0)
			return err;
	}

	return FUNC3(dev);
}