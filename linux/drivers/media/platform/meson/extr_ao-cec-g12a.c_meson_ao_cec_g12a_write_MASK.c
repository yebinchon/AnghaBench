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
 int /*<<< orphan*/  CECB_RW_REG ; 
 int CECB_RW_WRITE_EN ; 
 int /*<<< orphan*/  CECB_RW_WR_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *context, unsigned int addr,
				   unsigned int data)
{
	struct meson_ao_cec_g12a_device *ao_cec = context;
	u32 reg = FUNC0(CECB_RW_ADDR, addr) |
		  FUNC0(CECB_RW_WR_DATA, data) |
		  CECB_RW_WRITE_EN;

	return FUNC1(ao_cec->regmap, CECB_RW_REG, reg);
}