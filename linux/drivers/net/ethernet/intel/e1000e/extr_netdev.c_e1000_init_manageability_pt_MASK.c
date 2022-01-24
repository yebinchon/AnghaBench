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
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int E1000_MANC2H_PORT_623 ; 
 int E1000_MANC2H_PORT_664 ; 
 int E1000_MANC_EN_MNG2HOST ; 
 int E1000_MDEF_PORT_623 ; 
 int E1000_MDEF_PORT_664 ; 
 int FLAG_MNG_PT_ENABLED ; 
 int /*<<< orphan*/  MANC ; 
 int /*<<< orphan*/  MANC2H ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  e1000_82574 129 
#define  e1000_82583 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 manc, manc2h, mdef, i, j;

	if (!(adapter->flags & FLAG_MNG_PT_ENABLED))
		return;

	manc = FUNC3(MANC);

	/* enable receiving management packets to the host. this will probably
	 * generate destination unreachable messages from the host OS, but
	 * the packets will be handled on SMBUS
	 */
	manc |= E1000_MANC_EN_MNG2HOST;
	manc2h = FUNC3(MANC2H);

	switch (hw->mac.type) {
	default:
		manc2h |= (E1000_MANC2H_PORT_623 | E1000_MANC2H_PORT_664);
		break;
	case e1000_82574:
	case e1000_82583:
		/* Check if IPMI pass-through decision filter already exists;
		 * if so, enable it.
		 */
		for (i = 0, j = 0; i < 8; i++) {
			mdef = FUNC3(FUNC1(i));

			/* Ignore filters with anything other than IPMI ports */
			if (mdef & ~(E1000_MDEF_PORT_623 | E1000_MDEF_PORT_664))
				continue;

			/* Enable this decision filter in MANC2H */
			if (mdef)
				manc2h |= FUNC0(i);

			j |= mdef;
		}

		if (j == (E1000_MDEF_PORT_623 | E1000_MDEF_PORT_664))
			break;

		/* Create new decision filter in an empty filter */
		for (i = 0, j = 0; i < 8; i++)
			if (FUNC3(FUNC1(i)) == 0) {
				FUNC4(FUNC1(i), (E1000_MDEF_PORT_623 |
					       E1000_MDEF_PORT_664));
				manc2h |= FUNC0(1);
				j++;
				break;
			}

		if (!j)
			FUNC2("Unable to create IPMI pass-through filter\n");
		break;
	}

	FUNC4(MANC2H, manc2h);
	FUNC4(MANC, manc);
}