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
struct onenand_chip {int erase_shift; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct onenand_chip*) ; 
 int FUNC1 (struct onenand_chip*,int) ; 

inline unsigned FUNC2(struct onenand_chip *this, loff_t addr)
{
	if (!FUNC0(this))
		return addr >> this->erase_shift;
	return FUNC1(this, addr);
}