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
#define  ENET_E_CHLD_STOPPED 130 
#define  ENET_E_FAIL 129 
#define  ENET_E_FWRESP_PAUSE 128 
 int /*<<< orphan*/  FUNC0 (struct bna_enet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_enet*) ; 
 int /*<<< orphan*/  bna_enet_sm_chld_stop_wait ; 
 int /*<<< orphan*/  bna_enet_sm_stopped ; 

__attribute__((used)) static void
FUNC3(struct bna_enet *enet,
				enum bna_enet_event event)
{
	switch (event) {
	case ENET_E_FAIL:
		FUNC0(enet, bna_enet_sm_stopped);
		FUNC2(enet);
		break;

	case ENET_E_FWRESP_PAUSE:
	case ENET_E_CHLD_STOPPED:
		FUNC0(enet, bna_enet_sm_chld_stop_wait);
		break;

	default:
		FUNC1(event);
	}
}