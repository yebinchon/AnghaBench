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
struct phylink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct phylink*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *upstream)
{
	struct phylink *pl = upstream;

	FUNC0();

	FUNC1(pl, PHYLINK_DISABLE_LINK);
}