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
struct urb {int dummy; } ;
struct mt76_queue {size_t first; size_t tail; int ndesc; TYPE_1__* entry; } ;
struct mt76_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {struct urb* urb; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct urb*) ; 
 int FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mt76_dev *dev, struct mt76_queue *q)
{
	struct urb *urb;
	int err;

	while (q->first != q->tail) {
		urb = q->entry[q->first].urb;

		FUNC2(dev, urb);
		err = FUNC3(urb, GFP_ATOMIC);
		if (err < 0) {
			if (err == -ENODEV)
				FUNC1(MT76_REMOVED, &dev->state);
			else
				FUNC0(dev->dev, "tx urb submit failed:%d\n",
					err);
			break;
		}
		q->first = (q->first + 1) % q->ndesc;
	}
}