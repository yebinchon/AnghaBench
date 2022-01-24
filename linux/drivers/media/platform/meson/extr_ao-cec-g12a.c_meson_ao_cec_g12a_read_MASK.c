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
struct meson_ao_cec_g12a_device {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CECB_RW_ADDR ; 
 int CECB_RW_BUS_BUSY ; 
 int /*<<< orphan*/  CECB_RW_RD_DATA ; 
 int /*<<< orphan*/  CECB_RW_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void *context, unsigned int addr,
				  unsigned int *data)
{
	struct meson_ao_cec_g12a_device *ao_cec = context;
	u32 reg = FUNC1(CECB_RW_ADDR, addr);
	int ret = 0;

	ret = FUNC4(ao_cec->regmap, CECB_RW_REG, reg);
	if (ret)
		return ret;

	ret = FUNC3(ao_cec->regmap, CECB_RW_REG, reg,
				       !(reg & CECB_RW_BUS_BUSY),
				       5, 1000);
	if (ret)
		return ret;

	ret = FUNC2(ao_cec->regmap, CECB_RW_REG, &reg);

	*data = FUNC0(CECB_RW_RD_DATA, reg);

	return ret;
}