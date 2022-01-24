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
typedef  int u8 ;
struct csiphy_device {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev)
{
	struct csiphy_device *csiphy = dev;
	int i;

	for (i = 0; i < 11; i++) {
		int c = i + 22;
		u8 val = FUNC2(csiphy->base +
				       FUNC1(i));

		FUNC3(val, csiphy->base +
				    FUNC0(c));
	}

	FUNC3(0x1, csiphy->base + FUNC0(10));
	FUNC3(0x0, csiphy->base + FUNC0(10));

	for (i = 22; i < 33; i++)
		FUNC3(0x0, csiphy->base +
				    FUNC0(i));

	return IRQ_HANDLED;
}