#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucc_geth_private {int /*<<< orphan*/  napi; TYPE_2__* ug_info; int /*<<< orphan*/  ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ucc_geth_private *ugeth)
{
	/* Prevent any further xmits, plus detach the device. */
	FUNC2(ugeth->ndev);

	/* Wait for any current xmits to finish. */
	FUNC3(ugeth->ndev);

	/* Disable the interrupt to avoid NAPI rescheduling. */
	FUNC0(ugeth->ug_info->uf_info.irq);

	/* Stop NAPI, and possibly wait for its completion. */
	FUNC1(&ugeth->napi);
}