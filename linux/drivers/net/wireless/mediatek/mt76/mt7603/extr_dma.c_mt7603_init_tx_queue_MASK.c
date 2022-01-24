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
struct mt76_sw_queue {struct mt76_queue* q; int /*<<< orphan*/  swq; } ;
struct mt76_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_TX_RING_BASE ; 
 struct mt76_queue* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mt7603_dev*,struct mt76_queue*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mt7603_dev *dev, struct mt76_sw_queue *q,
		     int idx, int n_desc)
{
	struct mt76_queue *hwq;
	int err;

	hwq = FUNC2(dev->mt76.dev, sizeof(*hwq), GFP_KERNEL);
	if (!hwq)
		return -ENOMEM;

	err = FUNC4(dev, hwq, idx, n_desc, 0, MT_TX_RING_BASE);
	if (err < 0)
		return err;

	FUNC0(&q->swq);
	q->q = hwq;

	FUNC3(dev, FUNC1(idx));

	return 0;
}