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
struct bna_ethport {int dummy; } ;
typedef  enum bna_ethport_event { ____Placeholder_bna_ethport_event } bna_ethport_event ;

/* Variables and functions */
#define  ETHPORT_E_FAIL 133 
#define  ETHPORT_E_FWRESP_DOWN 132 
#define  ETHPORT_E_FWRESP_UP_FAIL 131 
#define  ETHPORT_E_FWRESP_UP_OK 130 
#define  ETHPORT_E_STOP 129 
#define  ETHPORT_E_UP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_ethport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_ethport*) ; 
 int /*<<< orphan*/  bna_ethport_sm_down ; 
 int /*<<< orphan*/  bna_ethport_sm_last_resp_wait ; 
 int /*<<< orphan*/  bna_ethport_sm_stopped ; 
 int /*<<< orphan*/  bna_ethport_sm_up_resp_wait ; 

__attribute__((used)) static void
FUNC3(struct bna_ethport *ethport,
			enum bna_ethport_event event)
{
	switch (event) {
	case ETHPORT_E_STOP:
		FUNC0(ethport, bna_ethport_sm_last_resp_wait);
		break;

	case ETHPORT_E_FAIL:
		FUNC0(ethport, bna_ethport_sm_stopped);
		break;

	case ETHPORT_E_UP:
		FUNC0(ethport, bna_ethport_sm_up_resp_wait);
		break;

	case ETHPORT_E_FWRESP_UP_OK:
		/* up_resp_wait->down_resp_wait transition on ETHPORT_E_DOWN */
		FUNC2(ethport);
		break;

	case ETHPORT_E_FWRESP_UP_FAIL:
	case ETHPORT_E_FWRESP_DOWN:
		FUNC0(ethport, bna_ethport_sm_down);
		break;

	default:
		FUNC1(event);
	}
}