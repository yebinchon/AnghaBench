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
struct work_struct {int dummy; } ;
struct si476x_core {int /*<<< orphan*/  is_alive; } ;

/* Variables and functions */
 struct si476x_core* FUNC0 (struct work_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct si476x_core*) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct si476x_core *core = FUNC0(work);

	FUNC2(core);

	if (FUNC1(&core->is_alive))
		FUNC3(core);
}