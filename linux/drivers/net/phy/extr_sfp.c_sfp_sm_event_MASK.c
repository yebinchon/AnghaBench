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
struct sfp {int sm_mod_state; int sm_dev_state; int sm_state; int state; int /*<<< orphan*/  sm_mutex; int /*<<< orphan*/  dev; scalar_t__ mod_phy; int /*<<< orphan*/  attached; } ;

/* Variables and functions */
 int EAGAIN ; 
 int SFP_DEV_DOWN ; 
#define  SFP_DEV_UP 139 
 unsigned int SFP_E_DEV_DOWN ; 
 unsigned int SFP_E_DEV_UP ; 
 unsigned int SFP_E_INSERT ; 
 unsigned int SFP_E_REMOVE ; 
 unsigned int SFP_E_TIMEOUT ; 
 unsigned int SFP_E_TX_CLEAR ; 
 unsigned int SFP_E_TX_FAULT ; 
 int SFP_F_TX_FAULT ; 
 int SFP_MOD_EMPTY ; 
#define  SFP_MOD_ERROR 138 
#define  SFP_MOD_HPOWER 137 
#define  SFP_MOD_PRESENT 136 
#define  SFP_MOD_PROBE 135 
#define  SFP_S_DOWN 134 
#define  SFP_S_INIT 133 
#define  SFP_S_LINK_UP 132 
#define  SFP_S_REINIT 131 
#define  SFP_S_TX_DISABLE 130 
#define  SFP_S_TX_FAULT 129 
#define  SFP_S_WAIT_LOS 128 
 int /*<<< orphan*/  T_INIT_JIFFIES ; 
 int T_PROBE_INIT ; 
 int /*<<< orphan*/  T_PROBE_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sfp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sfp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC10 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC11 (struct sfp*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sfp*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC14 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC15 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC16 (struct sfp*) ; 
 int FUNC17 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC18 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC19 (struct sfp*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC21 (struct sfp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

__attribute__((used)) static void FUNC23(struct sfp *sfp, unsigned int event)
{
	FUNC5(&sfp->sm_mutex);

	FUNC0(sfp->dev, "SM: enter %s:%s:%s event %s\n",
		FUNC4(sfp->sm_mod_state),
		FUNC2(sfp->sm_dev_state),
		FUNC22(sfp->sm_state),
		FUNC3(event));

	/* This state machine tracks the insert/remove state of
	 * the module, and handles probing the on-board EEPROM.
	 */
	switch (sfp->sm_mod_state) {
	default:
		if (event == SFP_E_INSERT && sfp->attached) {
			FUNC9(sfp);
			FUNC12(sfp, SFP_MOD_PROBE, T_PROBE_INIT);
		}
		break;

	case SFP_MOD_PROBE:
		if (event == SFP_E_REMOVE) {
			FUNC12(sfp, SFP_MOD_EMPTY, 0);
		} else if (event == SFP_E_TIMEOUT) {
			int val = FUNC17(sfp);

			if (val == 0)
				FUNC12(sfp, SFP_MOD_PRESENT, 0);
			else if (val > 0)
				FUNC12(sfp, SFP_MOD_HPOWER, val);
			else if (val != -EAGAIN)
				FUNC12(sfp, SFP_MOD_ERROR, 0);
			else
				FUNC21(sfp, T_PROBE_RETRY);
		}
		break;

	case SFP_MOD_HPOWER:
		if (event == SFP_E_TIMEOUT) {
			FUNC12(sfp, SFP_MOD_PRESENT, 0);
			break;
		}
		/* fallthrough */
	case SFP_MOD_PRESENT:
	case SFP_MOD_ERROR:
		if (event == SFP_E_REMOVE) {
			FUNC18(sfp);
			FUNC12(sfp, SFP_MOD_EMPTY, 0);
		}
		break;
	}

	/* This state machine tracks the netdev up/down state */
	switch (sfp->sm_dev_state) {
	default:
		if (event == SFP_E_DEV_UP)
			sfp->sm_dev_state = SFP_DEV_UP;
		break;

	case SFP_DEV_UP:
		if (event == SFP_E_DEV_DOWN) {
			/* If the module has a PHY, avoid raising TX disable
			 * as this resets the PHY. Otherwise, raise it to
			 * turn the laser off.
			 */
			if (!sfp->mod_phy)
				FUNC9(sfp);
			sfp->sm_dev_state = SFP_DEV_DOWN;
		}
		break;
	}

	/* Some events are global */
	if (sfp->sm_state != SFP_S_DOWN &&
	    (sfp->sm_mod_state != SFP_MOD_PRESENT ||
	     sfp->sm_dev_state != SFP_DEV_UP)) {
		if (sfp->sm_state == SFP_S_LINK_UP &&
		    sfp->sm_dev_state == SFP_DEV_UP)
			FUNC14(sfp);
		if (sfp->mod_phy)
			FUNC20(sfp);
		FUNC19(sfp, SFP_S_DOWN, 0);
		FUNC6(&sfp->sm_mutex);
		return;
	}

	/* The main state machine */
	switch (sfp->sm_state) {
	case SFP_S_DOWN:
		if (sfp->sm_mod_state == SFP_MOD_PRESENT &&
		    sfp->sm_dev_state == SFP_DEV_UP)
			FUNC16(sfp);
		break;

	case SFP_S_INIT:
		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT)
			FUNC11(sfp, true);
		else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR)
			FUNC13(sfp);
		break;

	case SFP_S_WAIT_LOS:
		if (event == SFP_E_TX_FAULT)
			FUNC11(sfp, true);
		else if (FUNC8(sfp, event))
			FUNC15(sfp);
		break;

	case SFP_S_LINK_UP:
		if (event == SFP_E_TX_FAULT) {
			FUNC14(sfp);
			FUNC11(sfp, true);
		} else if (FUNC7(sfp, event)) {
			FUNC14(sfp);
			FUNC19(sfp, SFP_S_WAIT_LOS, 0);
		}
		break;

	case SFP_S_TX_FAULT:
		if (event == SFP_E_TIMEOUT) {
			FUNC10(sfp);
			FUNC19(sfp, SFP_S_REINIT, T_INIT_JIFFIES);
		}
		break;

	case SFP_S_REINIT:
		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT) {
			FUNC11(sfp, false);
		} else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR) {
			FUNC1(sfp->dev, "module transmit fault recovered\n");
			FUNC13(sfp);
		}
		break;

	case SFP_S_TX_DISABLE:
		break;
	}

	FUNC0(sfp->dev, "SM: exit %s:%s:%s\n",
		FUNC4(sfp->sm_mod_state),
		FUNC2(sfp->sm_dev_state),
		FUNC22(sfp->sm_state));

	FUNC6(&sfp->sm_mutex);
}