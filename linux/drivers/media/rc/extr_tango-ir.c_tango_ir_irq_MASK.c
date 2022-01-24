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
struct tango_ir {scalar_t__ rc6_base; scalar_t__ rc5_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ IR_INT ; 
 scalar_t__ RC6_CTRL ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tango_ir*) ; 
 int /*<<< orphan*/  FUNC3 (struct tango_ir*) ; 
 int /*<<< orphan*/  FUNC4 (struct tango_ir*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct tango_ir *ir = dev_id;
	unsigned int rc5_stat;
	unsigned int rc6_stat;

	rc5_stat = FUNC1(ir->rc5_base + IR_INT);
	FUNC5(rc5_stat, ir->rc5_base + IR_INT);

	rc6_stat = FUNC1(ir->rc6_base + RC6_CTRL);
	FUNC5(rc6_stat, ir->rc6_base + RC6_CTRL);

	if (!(rc5_stat & 3) && !(rc6_stat & FUNC0(31)))
		return IRQ_NONE;

	if (rc5_stat & FUNC0(0))
		FUNC3(ir);

	if (rc5_stat & FUNC0(1))
		FUNC2(ir);

	if (rc6_stat & FUNC0(31))
		FUNC4(ir);

	return IRQ_HANDLED;
}