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
struct mxl111sf_state {int port_expander_addr; int gpio_port_expander; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
#define  mxl111sf_PCA9534 129 
#define  mxl111sf_gpio_hw 128 
 int FUNC0 (struct mxl111sf_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxl111sf_state*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct mxl111sf_state*) ; 

int FUNC5(struct mxl111sf_state *state)
{
	FUNC2("()");

	if (0x00 == state->port_expander_addr)
		FUNC1(state);

	switch (state->gpio_port_expander) {
	default:
		FUNC3(KERN_ERR,
			   "gpio_port_expander undefined, assuming PCA9534");
		/* fall-thru */
	case mxl111sf_PCA9534:
		return FUNC4(state);
	case mxl111sf_gpio_hw:
		return FUNC0(state);
	}
}