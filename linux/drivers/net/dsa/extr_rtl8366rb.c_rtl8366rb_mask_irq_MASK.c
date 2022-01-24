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
struct realtek_smi {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8366RB_INTERRUPT_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct realtek_smi* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct realtek_smi *smi = FUNC1(d);
	int ret;

	ret = FUNC2(smi->map, RTL8366RB_INTERRUPT_MASK_REG,
				 FUNC3(d), 0);
	if (ret)
		FUNC0(smi->dev, "could not mask IRQ\n");
}