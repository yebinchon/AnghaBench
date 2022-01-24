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
struct da8xx_ddrctl_setting {int /*<<< orphan*/  name; } ;
struct da8xx_ddrctl_config_knob {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct da8xx_ddrctl_config_knob*) ; 
 struct da8xx_ddrctl_config_knob* da8xx_ddrctl_knobs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct da8xx_ddrctl_config_knob *
FUNC2(const struct da8xx_ddrctl_setting *setting)
{
	const struct da8xx_ddrctl_config_knob *knob;
	int i;

	for (i = 0; i < FUNC0(da8xx_ddrctl_knobs); i++) {
		knob = &da8xx_ddrctl_knobs[i];

		if (FUNC1(knob->name, setting->name) == 0)
			return knob;
	}

	return NULL;
}