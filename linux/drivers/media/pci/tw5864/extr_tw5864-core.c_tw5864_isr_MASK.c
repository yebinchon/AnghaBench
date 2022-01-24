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
typedef  int u32 ;
struct tw5864_dev {TYPE_1__* pci; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TW5864_INTR_CLR_H ; 
 int /*<<< orphan*/  TW5864_INTR_CLR_L ; 
 int /*<<< orphan*/  TW5864_INTR_STATUS_H ; 
 int /*<<< orphan*/  TW5864_INTR_STATUS_L ; 
 int TW5864_INTR_TIMER ; 
 int TW5864_INTR_VLC_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tw5864_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct tw5864_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct tw5864_dev *dev = dev_id;
	u32 status;

	status = FUNC3(TW5864_INTR_STATUS_L) |
		FUNC3(TW5864_INTR_STATUS_H) << 16;
	if (!status)
		return IRQ_NONE;

	FUNC4(TW5864_INTR_CLR_L, 0xffff);
	FUNC4(TW5864_INTR_CLR_H, 0xffff);

	if (status & TW5864_INTR_VLC_DONE)
		FUNC1(dev);

	if (status & TW5864_INTR_TIMER)
		FUNC2(dev);

	if (!(status & (TW5864_INTR_TIMER | TW5864_INTR_VLC_DONE))) {
		FUNC0(&dev->pci->dev, "Unknown interrupt, status 0x%08X\n",
			status);
	}

	return IRQ_HANDLED;
}