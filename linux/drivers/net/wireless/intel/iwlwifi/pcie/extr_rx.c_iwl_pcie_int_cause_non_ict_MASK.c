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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT ; 
 TYPE_1__* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct iwl_trans *trans)
{
	u32 inta;

	FUNC2(&FUNC0(trans)->irq_lock);

	FUNC3(trans->dev);

	/* Discover which interrupts are active/pending */
	inta = FUNC1(trans, CSR_INT);

	/* the thread will service interrupts and re-enable them */
	return inta;
}