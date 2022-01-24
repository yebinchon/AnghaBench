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
struct bfa_iocpf {TYPE_1__* ioc; } ;
struct TYPE_2__ {int /*<<< orphan*/  iocpf_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_TOV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_iocpf *iocpf)
{
	FUNC1(&(iocpf->ioc)->iocpf_timer, jiffies +
		FUNC2(BFA_IOC_TOV));
	FUNC0(iocpf->ioc);
}