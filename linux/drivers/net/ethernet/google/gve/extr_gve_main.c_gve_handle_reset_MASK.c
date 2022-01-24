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
struct gve_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gve_priv*) ; 
 scalar_t__ FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct gve_priv *priv)
{
	/* A service task will be scheduled at the end of probe to catch any
	 * resets that need to happen, and we don't want to reset until
	 * probe is done.
	 */
	if (FUNC1(priv))
		return;

	if (FUNC0(priv)) {
		FUNC3();
		FUNC2(priv, false);
		FUNC4();
	}
}