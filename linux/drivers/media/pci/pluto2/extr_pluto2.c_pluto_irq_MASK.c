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
struct pluto {int dead; scalar_t__ overflow; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  REG_TSCR ; 
 int TSCR_DE ; 
 int TSCR_IACK ; 
 int TSCR_NBPACKETS ; 
 int TSCR_OVR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pluto*,int) ; 
 int FUNC2 (struct pluto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pluto*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pluto*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct pluto *pluto = dev_id;
	u32 tscr;

	/* check whether an interrupt occurred on this device */
	tscr = FUNC2(pluto, REG_TSCR);
	if (!(tscr & (TSCR_DE | TSCR_OVR)))
		return IRQ_NONE;

	if (tscr == 0xffffffff) {
		if (pluto->dead == 0)
			FUNC0(&pluto->pdev->dev, "card has hung or been ejected.\n");
		/* It's dead Jim */
		pluto->dead = 1;
		return IRQ_HANDLED;
	}

	/* dma end interrupt */
	if (tscr & TSCR_DE) {
		FUNC1(pluto, (tscr & TSCR_NBPACKETS) >> 24);
		/* overflow interrupt */
		if (tscr & TSCR_OVR)
			pluto->overflow++;
		if (pluto->overflow) {
			FUNC0(&pluto->pdev->dev, "overflow irq (%d)\n",
					pluto->overflow);
			FUNC3(pluto, 1);
			pluto->overflow = 0;
		}
	} else if (tscr & TSCR_OVR) {
		pluto->overflow++;
	}

	/* ACK the interrupt */
	FUNC4(pluto, tscr | TSCR_IACK);

	return IRQ_HANDLED;
}