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
typedef  int /*<<< orphan*/  u8 ;
struct tc6393xb {int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 
 struct tc6393xb* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip,
			unsigned offset, int value)
{
	struct tc6393xb *tc6393xb = FUNC3(chip);
	unsigned long flags;
	u8 doecr;

	FUNC4(&tc6393xb->lock, flags);

	FUNC2(chip, offset, value);

	doecr = FUNC6(tc6393xb->scr + FUNC0(offset / 8));
	doecr |= FUNC1(offset);
	FUNC7(doecr, tc6393xb->scr + FUNC0(offset / 8));

	FUNC5(&tc6393xb->lock, flags);

	return 0;
}