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
struct bfa_ioc {int /*<<< orphan*/  ioc_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_TOV ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_ioc *ioc)
{
	FUNC1(&ioc->ioc_timer, jiffies +
		FUNC2(BFA_IOC_TOV));
	FUNC0(ioc);
}