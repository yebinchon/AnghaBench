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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ COMMAND_REG_SIMD_MASK ; 
 scalar_t__ HC_REG_COMMAND_REG ; 
 scalar_t__ FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline u16 FUNC3(struct bnx2x *bp)
{
	u32 hc_addr = (HC_REG_COMMAND_REG + FUNC0(bp)*32 +
		       COMMAND_REG_SIMD_MASK);
	u32 result = FUNC1(bp, hc_addr);

	FUNC2();
	return result;
}