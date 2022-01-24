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
typedef  int u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int,int) ; 

void FUNC2(struct aq_hw_s *aq_hw, u32 addr, u32 msk,
			 u32 shift, u32 val)
{
	if (msk ^ ~0) {
		u32 reg_old, reg_new;

		reg_old = FUNC0(aq_hw, addr);
		reg_new = (reg_old & (~msk)) | (val << shift);

		if (reg_old != reg_new)
			FUNC1(aq_hw, addr, reg_new);
	} else {
		FUNC1(aq_hw, addr, val);
	}
}