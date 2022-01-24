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
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct irq_data*) ; 

__attribute__((used)) static u32 FUNC2(struct irq_data *d)
{
	int line = FUNC1(d);
	u32 val;

	/* For line interrupts we combine link down in bits
	 * 6..11 with link up in bits 0..5 into one interrupt.
	 */
	if (line < 12)
		val = FUNC0(line) | FUNC0(line + 6);
	else
		val = FUNC0(line);
	return val;
}