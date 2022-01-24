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
struct phylink_link_state {scalar_t__ link; } ;
struct phylink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phylink*,struct phylink_link_state const*) ; 

__attribute__((used)) static void FUNC1(struct phylink *pl,
				  const struct phylink_link_state *state)
{
	if (state->link)
		FUNC0(pl, state);
}