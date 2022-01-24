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
typedef  int /*<<< orphan*/  u8 ;
struct max2175 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC2(struct max2175 *ctx, u8 idx, u8 msb, u8 lsb)
{
	u8 val;

	if (FUNC1(ctx, idx, &val))
		return 0;

	return FUNC0(val, msb, lsb);
}