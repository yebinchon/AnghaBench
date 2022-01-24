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
struct bfa_ioc {int /*<<< orphan*/  notify_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  qe; } ;
struct bfa_flash {struct bfa_ioc* ioc; TYPE_1__ ioc_notify; scalar_t__ op_busy; int /*<<< orphan*/ * cbarg; int /*<<< orphan*/ * cbfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_FLASH ; 
 int /*<<< orphan*/  bfa_flash_intr ; 
 int /*<<< orphan*/  bfa_flash_notify ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct bfa_flash*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_flash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(struct bfa_flash *flash, struct bfa_ioc *ioc, void *dev)
{
	flash->ioc = ioc;
	flash->cbfn = NULL;
	flash->cbarg = NULL;
	flash->op_busy = 0;

	FUNC1(flash->ioc, BFI_MC_FLASH, bfa_flash_intr, flash);
	FUNC0(&flash->ioc_notify, bfa_flash_notify, flash);
	FUNC2(&flash->ioc_notify.qe, &flash->ioc->notify_q);
}