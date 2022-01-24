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
struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf_timer; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
#define  IOCPF_E_DISABLE 131 
#define  IOCPF_E_FWRSP_ENABLE 130 
#define  IOCPF_E_INITFAIL 129 
#define  IOCPF_E_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling ; 
 int /*<<< orphan*/  bfa_iocpf_sm_initfail_sync ; 
 int /*<<< orphan*/  bfa_iocpf_sm_ready ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_FWRSP_ENABLE:
		FUNC4(&ioc->iocpf_timer);
		FUNC2(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_ready);
		break;

	case IOCPF_E_INITFAIL:
		FUNC4(&ioc->iocpf_timer);
		/* fall through */

	case IOCPF_E_TIMEOUT:
		FUNC2(ioc);
		if (event == IOCPF_E_TIMEOUT)
			FUNC1(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_initfail_sync);
		break;

	case IOCPF_E_DISABLE:
		FUNC4(&ioc->iocpf_timer);
		FUNC2(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabling);
		break;

	default:
		FUNC3(event);
	}
}