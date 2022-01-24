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
struct tc6393xb {scalar_t__ scr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 struct tc6393xb* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
		unsigned offset)
{
	struct tc6393xb *tc6393xb = FUNC2(chip);

	/* XXX: does dsr also represent inputs? */
	return !!(FUNC3(tc6393xb->scr + FUNC0(offset / 8))
		  & FUNC1(offset));
}