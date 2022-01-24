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
 int /*<<< orphan*/  FUNC0 (struct max2175*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct max2175 *ctx, bool enable)
{
	if (enable)
		/* Stuff bits are zeroed */
		FUNC0(ctx, 104, 3, 0, 2);
	else
		/* Keep SCK alive */
		FUNC0(ctx, 104, 3, 0, 9);
	FUNC1(ctx, "i2s %sabled\n", enable ? "en" : "dis");
}