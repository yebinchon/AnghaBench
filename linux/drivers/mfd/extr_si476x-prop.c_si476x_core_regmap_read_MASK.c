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
struct si476x_core {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct si476x_core*,unsigned int) ; 

__attribute__((used)) static int FUNC1(void *context, unsigned int reg,
				   unsigned *val)
{
	struct si476x_core *core = context;
	int err;

	err = FUNC0(core, reg);
	if (err < 0)
		return err;

	*val = err;

	return 0;
}