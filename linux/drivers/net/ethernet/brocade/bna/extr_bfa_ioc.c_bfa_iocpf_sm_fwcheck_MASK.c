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
#define  IOCPF_E_DISABLE 131 
#define  IOCPF_E_SEMLOCKED 130 
#define  IOCPF_E_SEM_ERROR 129 
#define  IOCPF_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  bfa_iocpf_sm_hwinit ; 
 int /*<<< orphan*/  bfa_iocpf_sm_mismatch ; 
 int /*<<< orphan*/  bfa_iocpf_sm_reset ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		if (FUNC1(ioc)) {
			if (FUNC7(ioc)) {
				FUNC6(ioc);
				FUNC0(iocpf, bfa_iocpf_sm_hwinit);
			} else {
				FUNC2(ioc);
				FUNC8(ioc);
				FUNC10(&ioc->sem_timer, jiffies +
					FUNC11(BFA_IOC_HWSEM_TOV));
			}
		} else {
			FUNC8(ioc);
			FUNC0(iocpf, bfa_iocpf_sm_mismatch);
		}
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC0(iocpf, bfa_iocpf_sm_fail);
		FUNC5(ioc);
		break;

	case IOCPF_E_DISABLE:
		FUNC3(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_reset);
		FUNC4(ioc);
		break;

	case IOCPF_E_STOP:
		FUNC3(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_reset);
		break;

	default:
		FUNC9(event);
	}
}