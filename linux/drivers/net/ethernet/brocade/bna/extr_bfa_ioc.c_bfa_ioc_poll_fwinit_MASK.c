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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ poll_time; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf_timer; TYPE_1__ iocpf; } ;

/* Variables and functions */
 scalar_t__ BFA_IOC_POLL_TOV ; 
 scalar_t__ BFA_IOC_TOV ; 
 scalar_t__ BFI_IOC_DISABLED ; 
 int /*<<< orphan*/  IOCPF_E_FWREADY ; 
 int /*<<< orphan*/  IOCPF_E_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bfa_ioc*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc)
{
	u32 fwstate = FUNC1(ioc);

	if (fwstate == BFI_IOC_DISABLED) {
		FUNC0(&ioc->iocpf, IOCPF_E_FWREADY);
		return;
	}

	if (ioc->iocpf.poll_time >= BFA_IOC_TOV) {
		FUNC0(&ioc->iocpf, IOCPF_E_TIMEOUT);
	} else {
		ioc->iocpf.poll_time += BFA_IOC_POLL_TOV;
		FUNC2(&ioc->iocpf_timer, jiffies +
			FUNC3(BFA_IOC_POLL_TOV));
	}
}