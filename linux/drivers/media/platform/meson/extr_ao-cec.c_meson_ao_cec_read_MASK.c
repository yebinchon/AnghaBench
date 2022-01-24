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
typedef  int /*<<< orphan*/  u32 ;
struct meson_ao_cec_device {int /*<<< orphan*/  cec_reg_lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_RW_ADDR ; 
 int /*<<< orphan*/  CEC_RW_RD_DATA ; 
 scalar_t__ CEC_RW_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct meson_ao_cec_device *ao_cec,
			     unsigned long address, u8 *data,
			     int *res)
{
	unsigned long flags;
	u32 reg = FUNC1(CEC_RW_ADDR, address);
	int ret = 0;

	if (res && *res)
		return;

	FUNC4(&ao_cec->cec_reg_lock, flags);

	ret = FUNC2(ao_cec);
	if (ret)
		goto read_out;

	FUNC6(reg, ao_cec->base + CEC_RW_REG);

	ret = FUNC2(ao_cec);
	if (ret)
		goto read_out;

	*data = FUNC0(CEC_RW_RD_DATA,
			  FUNC3(ao_cec->base + CEC_RW_REG));

read_out:
	FUNC5(&ao_cec->cec_reg_lock, flags);

	if (res)
		*res = ret;
}