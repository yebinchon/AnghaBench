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
struct bnad {int /*<<< orphan*/  run_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_MBOX_IRQ_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_intr_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad)
{
	FUNC1(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags);

	FUNC0(bnad, mbox_intr_disabled);
}