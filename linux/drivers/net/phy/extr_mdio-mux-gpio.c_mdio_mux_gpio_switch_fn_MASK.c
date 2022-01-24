#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mdio_mux_gpio_state {TYPE_1__* gpios; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  desc; int /*<<< orphan*/  ndescs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int* values ; 

__attribute__((used)) static int FUNC3(int current_child, int desired_child,
				   void *data)
{
	struct mdio_mux_gpio_state *s = data;
	FUNC1(values, FUNC0(desired_child));

	if (current_child == desired_child)
		return 0;

	values[0] = desired_child;

	FUNC2(s->gpios->ndescs, s->gpios->desc,
				       s->gpios->info, values);

	return 0;
}