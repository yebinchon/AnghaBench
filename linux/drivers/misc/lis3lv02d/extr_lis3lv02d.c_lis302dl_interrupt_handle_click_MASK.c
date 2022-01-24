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
typedef  int u8 ;
struct lis3lv02d {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * mapped_btns; int /*<<< orphan*/  (* read ) (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ;TYPE_1__* idev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* input; } ;

/* Variables and functions */
 int CLICK_SINGLE_X ; 
 int CLICK_SINGLE_Y ; 
 int CLICK_SINGLE_Z ; 
 int /*<<< orphan*/  CLICK_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(struct lis3lv02d *lis3)
{
	struct input_dev *dev = lis3->idev->input;
	u8 click_src;

	FUNC2(&lis3->mutex);
	lis3->read(lis3, CLICK_SRC, &click_src);

	if (click_src & CLICK_SINGLE_X) {
		FUNC0(dev, lis3->mapped_btns[0], 1);
		FUNC0(dev, lis3->mapped_btns[0], 0);
	}

	if (click_src & CLICK_SINGLE_Y) {
		FUNC0(dev, lis3->mapped_btns[1], 1);
		FUNC0(dev, lis3->mapped_btns[1], 0);
	}

	if (click_src & CLICK_SINGLE_Z) {
		FUNC0(dev, lis3->mapped_btns[2], 1);
		FUNC0(dev, lis3->mapped_btns[2], 0);
	}
	FUNC1(dev);
	FUNC3(&lis3->mutex);
}