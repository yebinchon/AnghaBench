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
struct encx24j600_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct encx24j600_context*,unsigned int,unsigned int) ; 
 int FUNC1 (struct encx24j600_context*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(void *context, unsigned int reg,
					     unsigned int mask,
					     unsigned int val)
{
	struct encx24j600_context *ctx = context;

	int ret = 0;
	unsigned int set_mask = mask & val;
	unsigned int clr_mask = mask & ~val;

	if ((reg >= 0x40 && reg < 0x6c) || reg >= 0x80)
		return -EINVAL;

	if (set_mask & 0xff)
		ret = FUNC1(ctx, reg, set_mask);

	set_mask = (set_mask & 0xff00) >> 8;

	if ((set_mask & 0xff) && (ret == 0))
		ret = FUNC1(ctx, reg + 1, set_mask);

	if ((clr_mask & 0xff) && (ret == 0))
		ret = FUNC0(ctx, reg, clr_mask);

	clr_mask = (clr_mask & 0xff00) >> 8;

	if ((clr_mask & 0xff) && (ret == 0))
		ret = FUNC0(ctx, reg + 1, clr_mask);

	return ret;
}