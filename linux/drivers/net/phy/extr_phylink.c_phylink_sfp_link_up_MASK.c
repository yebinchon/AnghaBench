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
struct phylink {int /*<<< orphan*/  phylink_disable_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct phylink*) ; 

__attribute__((used)) static void FUNC3(void *upstream)
{
	struct phylink *pl = upstream;

	FUNC0();

	FUNC1(PHYLINK_DISABLE_LINK, &pl->phylink_disable_state);
	FUNC2(pl);
}