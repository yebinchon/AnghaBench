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
struct bna_ioceth {int /*<<< orphan*/  ioc; } ;
typedef  enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;

/* Variables and functions */
#define  IOCETH_E_DISABLE 131 
#define  IOCETH_E_IOC_FAILED 130 
#define  IOCETH_E_IOC_READY 129 
#define  IOCETH_E_IOC_RESET 128 
 int /*<<< orphan*/  FUNC0 (struct bna_ioceth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  bna_ioceth_sm_enet_attr_wait ; 
 int /*<<< orphan*/  bna_ioceth_sm_failed ; 
 int /*<<< orphan*/  bna_ioceth_sm_ioc_disable_wait ; 
 int /*<<< orphan*/  FUNC3 (struct bna_ioceth*) ; 
 int /*<<< orphan*/  FUNC4 (struct bna_ioceth*) ; 

__attribute__((used)) static void
FUNC5(struct bna_ioceth *ioceth,
				enum bna_ioceth_event event)
{
	switch (event) {
	case IOCETH_E_DISABLE:
		FUNC0(ioceth, bna_ioceth_sm_ioc_disable_wait);
		FUNC1(&ioceth->ioc);
		break;

	case IOCETH_E_IOC_RESET:
		FUNC4(ioceth);
		break;

	case IOCETH_E_IOC_FAILED:
		FUNC3(ioceth);
		FUNC0(ioceth, bna_ioceth_sm_failed);
		break;

	case IOCETH_E_IOC_READY:
		FUNC0(ioceth, bna_ioceth_sm_enet_attr_wait);
		break;

	default:
		FUNC2(event);
	}
}