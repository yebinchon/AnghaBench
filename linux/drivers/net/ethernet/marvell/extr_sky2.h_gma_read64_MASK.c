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
typedef  int u64 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (struct sky2_hw*,unsigned int) ; 

__attribute__((used)) static inline u64 FUNC2(struct sky2_hw *hw, unsigned port, unsigned reg)
{
	unsigned base = FUNC0(port, reg);

	return (u64) FUNC1(hw, base)
		| (u64) FUNC1(hw, base+4) << 16
		| (u64) FUNC1(hw, base+8) << 32
		| (u64) FUNC1(hw, base+12) << 48;
}