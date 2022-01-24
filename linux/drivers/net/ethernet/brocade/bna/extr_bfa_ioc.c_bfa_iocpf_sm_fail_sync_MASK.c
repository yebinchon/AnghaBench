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
struct bfa_iocpf {int /*<<< orphan*/  auto_recover; struct bfa_ioc* ioc; } ;
struct bfa_ioc {int dummy; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_FAIL ; 
#define  IOCPF_E_DISABLE 131 
#define  IOCPF_E_FAIL 130 
#define  IOCPF_E_SEMLOCKED 129 
#define  IOCPF_E_SEM_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  bfa_iocpf_sm_hwinit ; 
 int /*<<< orphan*/  bfa_iocpf_sm_semwait ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		FUNC5(ioc);
		FUNC2(ioc);
		if (!iocpf->auto_recover) {
			FUNC7(ioc);
			FUNC4(ioc, BFI_IOC_FAIL);
			FUNC8(ioc);
			FUNC0(iocpf, bfa_iocpf_sm_fail);
		} else {
			if (FUNC6(ioc))
				FUNC0(iocpf, bfa_iocpf_sm_hwinit);
			else {
				FUNC8(ioc);
				FUNC0(iocpf, bfa_iocpf_sm_semwait);
			}
		}
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC0(iocpf, bfa_iocpf_sm_fail);
		FUNC3(ioc);
		break;

	case IOCPF_E_DISABLE:
		FUNC1(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FAIL:
		break;

	default:
		FUNC9(event);
	}
}