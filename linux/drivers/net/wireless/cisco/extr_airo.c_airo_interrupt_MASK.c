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
typedef  int u16 ;
struct net_device {struct airo_info* ml_priv; } ;
struct airo_info {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVACK ; 
 int /*<<< orphan*/  EVINTEN ; 
 int /*<<< orphan*/  EVSTAT ; 
 int EV_AWAKE ; 
 int EV_LINK ; 
 int EV_MIC ; 
 int EV_RX ; 
 int EV_TX ; 
 int EV_TXCPY ; 
 int EV_TXEXC ; 
 int IGNORE_INTS ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int STATUS_INTS ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	u16 status, savedInterrupts = 0;
	struct airo_info *ai = dev->ml_priv;
	int handled = 0;

	if (!FUNC8(dev))
		return IRQ_NONE;

	for (;;) {
		status = FUNC0(ai, EVSTAT);
		if (!(status & STATUS_INTS) || (status == 0xffff))
			break;

		handled = 1;

		if (status & EV_AWAKE) {
			FUNC2(ai, EVACK, EV_AWAKE);
			FUNC2(ai, EVACK, EV_AWAKE);
		}

		if (!savedInterrupts) {
			savedInterrupts = FUNC0(ai, EVINTEN);
			FUNC2(ai, EVINTEN, 0);
		}

		if (status & EV_MIC) {
			FUNC2(ai, EVACK, EV_MIC);
			FUNC3(ai);
		}

		if (status & EV_LINK) {
			/* Link status changed */
			FUNC4(ai);
		}

		/* Check to see if there is something to receive */
		if (status & EV_RX)
			FUNC5(ai);

		/* Check to see if a packet has been transmitted */
		if (status & (EV_TX | EV_TXCPY | EV_TXEXC))
			FUNC6(ai, status);

		if ( status & ~STATUS_INTS & ~IGNORE_INTS ) {
			FUNC7(ai->dev->name, "Got weird status %x",
				status & ~STATUS_INTS & ~IGNORE_INTS );
		}
	}

	if (savedInterrupts)
		FUNC2(ai, EVINTEN, savedInterrupts);

	return FUNC1(handled);
}