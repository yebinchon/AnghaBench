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
struct seq_file {int dummy; } ;
struct irqaction {int /*<<< orphan*/  name; struct irqaction* next; } ;
struct irq_desc {struct irqaction* action; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ irq_first ; 
 struct irq_desc* FUNC0 (scalar_t__) ; 
 int num_interrupt_lines ; 
 int /*<<< orphan*/ * num_interrupts ; 
 int /*<<< orphan*/ * num_wake_interrupts ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *p)
{
	int line;

	FUNC3(s, "name: number:  number of: wake:\n");

	for (line = 0; line < num_interrupt_lines; line++) {
		struct irq_desc *desc = FUNC0(line + irq_first);

		FUNC1(s, "%3i:  %6i %4i",
			   line,
			   num_interrupts[line],
			   num_wake_interrupts[line]);

		if (desc && desc->name)
			FUNC1(s, "-%-8s", desc->name);
		if (desc && desc->action) {
			struct irqaction *action = desc->action;

			FUNC1(s, "  %s", action->name);
			while ((action = action->next) != NULL)
				FUNC1(s, ", %s", action->name);
		}
		FUNC2(s, '\n');
	}

	return 0;
}