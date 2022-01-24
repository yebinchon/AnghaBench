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
struct TYPE_2__ {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; } ;
struct wil6210_priv {TYPE_1__ mbox_ctl; scalar_t__ csr; } ;
struct wil6210_mbox_ctl {int dummy; } ;

/* Variables and functions */
 scalar_t__ HOST_MBOX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct wil6210_priv *wil)
{
	/* make shadow copy of registers that should not change on run time */
	FUNC1(&wil->mbox_ctl, wil->csr + HOST_MBOX,
			     sizeof(struct wil6210_mbox_ctl));
	FUNC0(&wil->mbox_ctl.rx);
	FUNC0(&wil->mbox_ctl.tx);
}