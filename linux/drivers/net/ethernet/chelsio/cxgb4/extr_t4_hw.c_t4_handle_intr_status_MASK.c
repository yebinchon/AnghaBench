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
struct intr_info {int mask; int /*<<< orphan*/  (* int_handler ) (struct adapter*) ;scalar_t__ msg; scalar_t__ fatal; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 unsigned int FUNC4 (struct adapter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct adapter *adapter, unsigned int reg,
				 const struct intr_info *acts)
{
	int fatal = 0;
	unsigned int mask = 0;
	unsigned int status = FUNC4(adapter, reg);

	for ( ; acts->mask; ++acts) {
		if (!(status & acts->mask))
			continue;
		if (acts->fatal) {
			fatal++;
			FUNC0(adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
				  status & acts->mask);
		} else if (acts->msg && FUNC2())
			FUNC1(adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
				 status & acts->mask);
		if (acts->int_handler)
			acts->int_handler(adapter);
		mask |= acts->mask;
	}
	status &= mask;
	if (status)                           /* clear processed interrupts */
		FUNC5(adapter, reg, status);
	return fatal;
}