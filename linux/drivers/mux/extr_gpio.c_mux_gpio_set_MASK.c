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
struct mux_gpio {TYPE_1__* gpios; } ;
struct mux_control {int /*<<< orphan*/  chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  desc; int /*<<< orphan*/  ndescs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct mux_gpio* FUNC3 (int /*<<< orphan*/ ) ; 
 int* values ; 

__attribute__((used)) static int FUNC4(struct mux_control *mux, int state)
{
	struct mux_gpio *mux_gpio = FUNC3(mux->chip);
	FUNC1(values, FUNC0(state));

	values[0] = state;

	FUNC2(mux_gpio->gpios->ndescs,
				       mux_gpio->gpios->desc,
				       mux_gpio->gpios->info, values);

	return 0;
}