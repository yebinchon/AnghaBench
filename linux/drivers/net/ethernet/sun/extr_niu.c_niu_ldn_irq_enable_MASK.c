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
typedef  unsigned long u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int LDN_MAX ; 
 unsigned long FUNC0 (int) ; 
 unsigned long LD_IM0_MASK ; 
 unsigned long FUNC1 (int) ; 
 unsigned long LD_IM1_MASK ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct niu *np, int ldn, int on)
{
	unsigned long mask_reg, bits;
	u64 val;

	if (ldn < 0 || ldn > LDN_MAX)
		return -EINVAL;

	if (ldn < 64) {
		mask_reg = FUNC0(ldn);
		bits = LD_IM0_MASK;
	} else {
		mask_reg = FUNC1(ldn - 64);
		bits = LD_IM1_MASK;
	}

	val = FUNC2(mask_reg);
	if (on)
		val &= ~bits;
	else
		val |= bits;
	FUNC3(mask_reg, val);

	return 0;
}