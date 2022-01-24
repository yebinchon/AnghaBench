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
struct TYPE_2__ {int /*<<< orphan*/  ctl_pin_status_mask; } ;
struct cx231xx {TYPE_1__ board; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_CTRL ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct cx231xx *dev)
{
	u32 value;
	int status = 0;

	status = FUNC0(dev, PIN_CTRL, &value);
	value |= (~dev->board.ctl_pin_status_mask);
	status = FUNC1(dev, PIN_CTRL, value);

	return status;
}