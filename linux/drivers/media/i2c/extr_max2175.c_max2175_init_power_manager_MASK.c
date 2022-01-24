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
struct max2175 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct max2175*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct max2175 *ctx)
{
	int ret;

	/* Execute on-chip power-up/calibration */
	FUNC1(ctx, 99, 2, 0);
	FUNC3(1000, 1500);
	FUNC1(ctx, 99, 2, 1);

	/* Wait for the power manager to finish. */
	ret = FUNC0(ctx, 69, 7, 7, 1, 50000);
	if (ret)
		FUNC2(ctx, "init pm failed\n");

	return ret;
}