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
typedef  int u8 ;
struct pm_irq_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm_irq_chip*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct pm_irq_chip *chip,
					     int master, u8 master_val)
{
	int block;

	for (block = 1; block < 8; block++)
		if (master_val & FUNC0(block))
			FUNC1(chip, master, block);
}