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
struct cx18 {int gpio_val; int /*<<< orphan*/  gpio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cx18 *cx, u32 mask, u32 data)
{
	if (mask == 0)
		return;

	FUNC1(&cx->gpio_lock);
	cx->gpio_val = (cx->gpio_val & ~mask) | (data & mask);
	FUNC0(cx);
	FUNC2(&cx->gpio_lock);
}