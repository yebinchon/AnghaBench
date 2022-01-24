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
struct urb {int dummy; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MT_RXQ_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC1 (struct mt76_dev*) ; 
 int FUNC2 (struct mt76_dev*,struct urb*) ; 
 int FUNC3 (struct mt76_dev*,struct urb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct urb*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct mt76_dev *dev = (struct mt76_dev *)data;
	struct urb *urb;
	int err, count;

	FUNC5();

	while (true) {
		urb = FUNC1(dev);
		if (!urb)
			break;

		count = FUNC2(dev, urb);
		if (count > 0) {
			err = FUNC3(dev, urb, count, GFP_ATOMIC);
			if (err < 0)
				break;
		}
		FUNC4(dev, urb);
	}
	FUNC0(dev, MT_RXQ_MAIN, NULL);

	FUNC6();
}