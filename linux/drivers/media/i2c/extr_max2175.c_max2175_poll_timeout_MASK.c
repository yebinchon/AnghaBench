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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct max2175 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct max2175 *ctx, u8 idx, u8 msb, u8 lsb,
				u8 exp_bitval, u32 timeout_us)
{
	unsigned int val;

	return FUNC1(ctx->regmap, idx, val,
			(FUNC0(val, msb, lsb) == exp_bitval),
			1000, timeout_us);
}