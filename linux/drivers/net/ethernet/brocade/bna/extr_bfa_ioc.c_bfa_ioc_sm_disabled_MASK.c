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
struct TYPE_2__ {int /*<<< orphan*/  (* disable_cbfn ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  IOC_E_DETACH 130 
#define  IOC_E_DISABLE 129 
#define  IOC_E_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioc_sm_enabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc, enum ioc_event event)
{
	switch (event) {
	case IOC_E_ENABLE:
		FUNC0(ioc, bfa_ioc_sm_enabling);
		break;

	case IOC_E_DISABLE:
		ioc->cbfn->disable_cbfn(ioc->bfa);
		break;

	case IOC_E_DETACH:
		FUNC0(ioc, bfa_ioc_sm_uninit);
		FUNC1(ioc);
		break;

	default:
		FUNC2(event);
	}
}