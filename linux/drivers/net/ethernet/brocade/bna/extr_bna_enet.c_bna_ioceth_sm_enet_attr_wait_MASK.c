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
struct bna_ioceth {int dummy; } ;
typedef  enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;

/* Variables and functions */
#define  IOCETH_E_DISABLE 130 
#define  IOCETH_E_ENET_ATTR_RESP 129 
#define  IOCETH_E_IOC_FAILED 128 
 int /*<<< orphan*/  FUNC0 (struct bna_ioceth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bna_ioceth_sm_failed ; 
 int /*<<< orphan*/  bna_ioceth_sm_last_resp_wait ; 
 int /*<<< orphan*/  bna_ioceth_sm_ready ; 
 int /*<<< orphan*/  FUNC2 (struct bna_ioceth*) ; 

__attribute__((used)) static void
FUNC3(struct bna_ioceth *ioceth,
				enum bna_ioceth_event event)
{
	switch (event) {
	case IOCETH_E_DISABLE:
		FUNC0(ioceth, bna_ioceth_sm_last_resp_wait);
		break;

	case IOCETH_E_IOC_FAILED:
		FUNC2(ioceth);
		FUNC0(ioceth, bna_ioceth_sm_failed);
		break;

	case IOCETH_E_ENET_ATTR_RESP:
		FUNC0(ioceth, bna_ioceth_sm_ready);
		break;

	default:
		FUNC1(event);
	}
}