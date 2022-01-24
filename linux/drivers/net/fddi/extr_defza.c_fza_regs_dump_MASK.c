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
struct fza_private {TYPE_1__* regs; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_b; int /*<<< orphan*/  control_a; int /*<<< orphan*/  int_mask; int /*<<< orphan*/  status; int /*<<< orphan*/  int_event; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct fza_private *fp)
{
	FUNC0("%s: iomem registers:\n", fp->name);
	FUNC0(" reset:           0x%04x\n", FUNC1(&fp->regs->reset));
	FUNC0(" interrupt event: 0x%04x\n", FUNC2(&fp->regs->int_event));
	FUNC0(" status:          0x%04x\n", FUNC2(&fp->regs->status));
	FUNC0(" interrupt mask:  0x%04x\n", FUNC2(&fp->regs->int_mask));
	FUNC0(" control A:       0x%04x\n", FUNC2(&fp->regs->control_a));
	FUNC0(" control B:       0x%04x\n", FUNC2(&fp->regs->control_b));
}