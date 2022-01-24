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
struct gem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gem*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 int /*<<< orphan*/  FUNC5 (struct gem*) ; 

__attribute__((used)) static void FUNC6(struct gem *gp)
{
	/* Reset the chip */
	FUNC5(gp);

	/* Make sure ints are disabled */
	FUNC0(gp);

	/* Allocate & setup ring buffers */
	FUNC4(gp);

	/* Configure pause thresholds */
	FUNC3(gp);

	/* Init DMA & MAC engines */
	FUNC1(gp);
	FUNC2(gp);
}