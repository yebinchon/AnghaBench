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
struct bna_enet {int dummy; } ;
typedef  enum bna_enet_event { ____Placeholder_bna_enet_event } bna_enet_event ;

/* Variables and functions */
#define  ENET_E_CHLD_STOPPED 133 
#define  ENET_E_FAIL 132 
#define  ENET_E_MTU_CFG 131 
#define  ENET_E_PAUSE_CFG 130 
#define  ENET_E_START 129 
#define  ENET_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_enet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bna_enet_sm_pause_init_wait ; 
 int /*<<< orphan*/  FUNC2 (struct bna_enet*) ; 
 int /*<<< orphan*/  FUNC3 (struct bna_enet*) ; 

__attribute__((used)) static void
FUNC4(struct bna_enet *enet, enum bna_enet_event event)
{
	switch (event) {
	case ENET_E_START:
		FUNC0(enet, bna_enet_sm_pause_init_wait);
		break;

	case ENET_E_STOP:
		FUNC3(enet);
		break;

	case ENET_E_FAIL:
		/* No-op */
		break;

	case ENET_E_PAUSE_CFG:
		break;

	case ENET_E_MTU_CFG:
		FUNC2(enet);
		break;

	case ENET_E_CHLD_STOPPED:
		/**
		 * This event is received due to Ethport, Tx and Rx objects
		 * failing
		 */
		/* No-op */
		break;

	default:
		FUNC1(event);
	}
}