#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* pci; } ;
struct bttv {TYPE_1__ c; } ;
struct TYPE_4__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DATA ; 
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct bttv *btv)
{
	int state;

	if ((FUNC0(btv->c.pci->devfn) & ~3) != 0xC) {
		FUNC7("This is not a PCI-8604PW\n");
		return;
	}

	if (FUNC0(btv->c.pci->devfn) != 0xD)
		return;

	FUNC2(0x080002, BT848_GPIO_OUT_EN);

	state = (FUNC1(BT848_GPIO_DATA) >> 21) & 7;

	for (;;) {
		switch (state) {
		case 1:
		case 5:
		case 6:
		case 4:
			FUNC4("PCI-8604PW in state %i, toggling pin\n",
				 state);
			FUNC2(0x080000, BT848_GPIO_DATA);
			FUNC3(1);
			FUNC2(0x000000, BT848_GPIO_DATA);
			FUNC3(1);
			break;
		case 7:
			FUNC6("PCI-8604PW unlocked\n");
			return;
		case 0:
			/* FIXME: If we are in state 7 and toggle GPIO[19] one
			   more time, the CPLD goes into state 0, where PCI bus
			   mastering is inhibited again. We have not managed to
			   get out of that state. */

			FUNC5("PCI-8604PW locked until reset\n");
			return;
		default:
			FUNC5("PCI-8604PW in unknown state %i\n", state);
			return;
		}

		state = (state << 4) | ((FUNC1(BT848_GPIO_DATA) >> 21) & 7);

		switch (state) {
		case 0x15:
		case 0x56:
		case 0x64:
		case 0x47:
		/* The transition from state 7 to state 0 is, as explained
		   above, valid but undesired and with this code impossible
		   as we exit as soon as we are in state 7.
		case 0x70: */
			break;
		default:
			FUNC5("PCI-8604PW invalid transition %i -> %i\n",
			       state >> 4, state & 7);
			return;
		}
		state &= 7;
	}
}