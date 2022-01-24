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
typedef  int u32 ;
struct solo_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SOLO_IRQ_ENCODER ; 
 int SOLO_IRQ_G723 ; 
 int SOLO_IRQ_IIC ; 
 int FUNC0 (int) ; 
 int SOLO_IRQ_PCI_ERR ; 
 int /*<<< orphan*/  SOLO_IRQ_STAT ; 
 int SOLO_IRQ_VIDEO_IN ; 
 int SOLO_NR_P2M ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int) ; 
 int FUNC6 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct solo_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct solo_dev *solo_dev = data;
	u32 status;
	int i;

	status = FUNC6(solo_dev, SOLO_IRQ_STAT);
	if (!status)
		return IRQ_NONE;

	/* Acknowledge all interrupts immediately */
	FUNC7(solo_dev, SOLO_IRQ_STAT, status);

	if (status & SOLO_IRQ_PCI_ERR)
		FUNC4(solo_dev);

	for (i = 0; i < SOLO_NR_P2M; i++)
		if (status & FUNC0(i))
			FUNC5(solo_dev, i);

	if (status & SOLO_IRQ_IIC)
		FUNC3(solo_dev);

	if (status & SOLO_IRQ_VIDEO_IN) {
		FUNC9(solo_dev);
		FUNC8(solo_dev);
	}

	if (status & SOLO_IRQ_ENCODER)
		FUNC1(solo_dev);

	if (status & SOLO_IRQ_G723)
		FUNC2(solo_dev);

	return IRQ_HANDLED;
}