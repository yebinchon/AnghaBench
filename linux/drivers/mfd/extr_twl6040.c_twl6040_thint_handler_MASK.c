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
struct twl6040 {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TWL6040_REG_STATUS ; 
 int TWL6040_TSHUTDET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl6040*,int) ; 
 int FUNC2 (struct twl6040*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct twl6040 *twl6040 = data;
	u8 status;

	status = FUNC2(twl6040, TWL6040_REG_STATUS);
	if (status & TWL6040_TSHUTDET) {
		FUNC0(twl6040->dev, "Thermal shutdown, powering-off");
		FUNC1(twl6040, 0);
	} else {
		FUNC0(twl6040->dev, "Leaving thermal shutdown, powering-on");
		FUNC1(twl6040, 1);
	}

	return IRQ_HANDLED;
}