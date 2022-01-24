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
struct bna_enet {int flags; } ;
typedef  enum bna_enet_event { ____Placeholder_bna_enet_event } bna_enet_event ;

/* Variables and functions */
 int BNA_ENET_F_MTU_CHANGED ; 
 int BNA_ENET_F_PAUSE_CHANGED ; 
#define  ENET_E_CHLD_STOPPED 133 
#define  ENET_E_FAIL 132 
#define  ENET_E_FWRESP_PAUSE 131 
#define  ENET_E_MTU_CFG 130 
#define  ENET_E_PAUSE_CFG 129 
#define  ENET_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_enet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_enet*) ; 
 int /*<<< orphan*/  FUNC3 (struct bna_enet*) ; 
 int /*<<< orphan*/  FUNC4 (struct bna_enet*) ; 
 int /*<<< orphan*/  FUNC5 (struct bna_enet*) ; 
 int /*<<< orphan*/  bna_enet_sm_cfg_stop_wait ; 
 int /*<<< orphan*/  bna_enet_sm_started ; 
 int /*<<< orphan*/  bna_enet_sm_stopped ; 

__attribute__((used)) static void
FUNC6(struct bna_enet *enet,
			enum bna_enet_event event)
{
	switch (event) {
	case ENET_E_STOP:
		enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
		enet->flags &= ~BNA_ENET_F_MTU_CHANGED;
		FUNC0(enet, bna_enet_sm_cfg_stop_wait);
		break;

	case ENET_E_FAIL:
		enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
		enet->flags &= ~BNA_ENET_F_MTU_CHANGED;
		FUNC0(enet, bna_enet_sm_stopped);
		FUNC3(enet);
		break;

	case ENET_E_PAUSE_CFG:
		enet->flags |= BNA_ENET_F_PAUSE_CHANGED;
		break;

	case ENET_E_MTU_CFG:
		enet->flags |= BNA_ENET_F_MTU_CHANGED;
		break;

	case ENET_E_CHLD_STOPPED:
		FUNC4(enet);
		/* Fall through */
	case ENET_E_FWRESP_PAUSE:
		if (enet->flags & BNA_ENET_F_PAUSE_CHANGED) {
			enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
			FUNC2(enet);
		} else if (enet->flags & BNA_ENET_F_MTU_CHANGED) {
			enet->flags &= ~BNA_ENET_F_MTU_CHANGED;
			FUNC5(enet);
		} else {
			FUNC0(enet, bna_enet_sm_started);
		}
		break;

	default:
		FUNC1(event);
	}
}