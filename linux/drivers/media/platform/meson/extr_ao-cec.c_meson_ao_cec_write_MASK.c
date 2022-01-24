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
typedef  unsigned long u8 ;
typedef  int u32 ;
struct meson_ao_cec_device {int /*<<< orphan*/  cec_reg_lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_RW_ADDR ; 
 scalar_t__ CEC_RW_REG ; 
 int CEC_RW_WRITE_EN ; 
 int /*<<< orphan*/  CEC_RW_WR_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct meson_ao_cec_device *ao_cec,
			       unsigned long address, u8 data,
			       int *res)
{
	unsigned long flags;
	u32 reg = FUNC0(CEC_RW_ADDR, address) |
		  FUNC0(CEC_RW_WR_DATA, data) |
		  CEC_RW_WRITE_EN;
	int ret = 0;

	if (res && *res)
		return;

	FUNC2(&ao_cec->cec_reg_lock, flags);

	ret = FUNC1(ao_cec);
	if (ret)
		goto write_out;

	FUNC4(reg, ao_cec->base + CEC_RW_REG);

write_out:
	FUNC3(&ao_cec->cec_reg_lock, flags);

	if (res)
		*res = ret;
}