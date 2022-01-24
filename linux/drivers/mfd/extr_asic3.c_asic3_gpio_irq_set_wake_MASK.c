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
typedef  int u32 ;
typedef  int u16 ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct asic3 {int dummy; } ;

/* Variables and functions */
 int ASIC3_GPIO_SLEEP_MASK ; 
 int FUNC0 (struct asic3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct asic3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asic3*,int,int,int) ; 
 struct asic3* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data, unsigned int on)
{
	struct asic3 *asic = FUNC3(data);
	u32 bank, index;
	u16 bit;

	bank = FUNC0(asic, data->irq);
	index = FUNC1(asic, data->irq);
	bit = 1<<index;

	FUNC2(asic, bank + ASIC3_GPIO_SLEEP_MASK, bit, !on);

	return 0;
}