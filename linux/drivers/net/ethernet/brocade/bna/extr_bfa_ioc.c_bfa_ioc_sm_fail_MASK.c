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
struct bfa_ioc {int /*<<< orphan*/  bfa; TYPE_1__* cbfn; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_IOC_FAILURE ; 
#define  IOC_E_DETACH 131 
#define  IOC_E_DISABLE 130 
#define  IOC_E_ENABLE 129 
#define  IOC_E_HWERROR 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc, enum ioc_event event)
{
	switch (event) {
	case IOC_E_ENABLE:
		ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
		break;

	case IOC_E_DISABLE:
		FUNC0(ioc, bfa_ioc_sm_disabling);
		break;

	case IOC_E_DETACH:
		FUNC0(ioc, bfa_ioc_sm_uninit);
		FUNC1(ioc);
		break;

	case IOC_E_HWERROR:
		/* HB failure notification, ignore. */
		break;

	default:
		FUNC2(event);
	}
}