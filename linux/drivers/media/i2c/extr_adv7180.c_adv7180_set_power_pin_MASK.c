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
struct adv7180_state {int /*<<< orphan*/  pwdn_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct adv7180_state *state, bool on)
{
	if (!state->pwdn_gpio)
		return;

	if (on) {
		FUNC0(state->pwdn_gpio, 0);
		FUNC1(5000, 10000);
	} else {
		FUNC0(state->pwdn_gpio, 1);
	}
}