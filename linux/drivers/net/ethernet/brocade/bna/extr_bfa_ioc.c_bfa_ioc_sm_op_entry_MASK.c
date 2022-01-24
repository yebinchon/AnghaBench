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
struct TYPE_2__ {int /*<<< orphan*/  (* enable_cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_E_ENABLED ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_ioc *ioc)
{
	ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_OK);
	FUNC0(ioc, BFA_IOC_E_ENABLED);
	FUNC1(ioc);
}