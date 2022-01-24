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
struct bfa_ioc {int /*<<< orphan*/  sem_timer; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_HWSEM_TOV ; 
#define  IOCPF_E_DISABLE 130 
#define  IOCPF_E_SEMLOCKED 129 
#define  IOCPF_E_SEM_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  bfa_iocpf_sm_hwinit ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		if (FUNC3(ioc)) {
			FUNC4(ioc);
			FUNC0(iocpf, bfa_iocpf_sm_hwinit);
		} else {
			FUNC5(ioc);
			FUNC7(&ioc->sem_timer, jiffies +
				FUNC8(BFA_IOC_HWSEM_TOV));
		}
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC0(iocpf, bfa_iocpf_sm_fail);
		FUNC2(ioc);
		break;

	case IOCPF_E_DISABLE:
		FUNC1(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	default:
		FUNC6(event);
	}
}