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
typedef  size_t u8 ;
struct dpot_data {int feat; int* rdac_cache; scalar_t__ uid; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AD5270_ID ; 
 int /*<<< orphan*/  AD5271_ID ; 
 int /*<<< orphan*/  AD5291_ID ; 
 int /*<<< orphan*/  AD5292_ID ; 
 int /*<<< orphan*/  AD5293_ID ; 
 int DPOT_AD5270_1_2_4_READ_RDAC ; 
 int DPOT_AD5291_READ_RDAC ; 
 size_t DPOT_ADDR_CMD ; 
 size_t DPOT_ADDR_EEPROM ; 
 size_t DPOT_RDAC_MASK ; 
 unsigned int DPOT_SPI_READ_EEPROM ; 
 unsigned int DPOT_SPI_READ_RDAC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int F_RDACS_WONLY ; 
 int F_SPI_16BIT ; 
 int F_SPI_24BIT ; 
 int FUNC1 (struct dpot_data*,unsigned int) ; 
 int FUNC2 (struct dpot_data*,unsigned int) ; 

__attribute__((used)) static s32 FUNC3(struct dpot_data *dpot, u8 reg)
{
	unsigned int ctrl = 0;
	int value;

	if (!(reg & (DPOT_ADDR_EEPROM | DPOT_ADDR_CMD))) {

		if (dpot->feat & F_RDACS_WONLY)
			return dpot->rdac_cache[reg & DPOT_RDAC_MASK];
		if (dpot->uid == FUNC0(AD5291_ID) ||
			dpot->uid == FUNC0(AD5292_ID) ||
			dpot->uid == FUNC0(AD5293_ID)) {

			value = FUNC2(dpot,
				DPOT_AD5291_READ_RDAC << 2);

			if (dpot->uid == FUNC0(AD5291_ID))
				value = value >> 2;

			return value;
		} else if (dpot->uid == FUNC0(AD5270_ID) ||
			dpot->uid == FUNC0(AD5271_ID)) {

			value = FUNC2(dpot,
				DPOT_AD5270_1_2_4_READ_RDAC << 2);

			if (value < 0)
				return value;

			if (dpot->uid == FUNC0(AD5271_ID))
				value = value >> 2;

			return value;
		}

		ctrl = DPOT_SPI_READ_RDAC;
	} else if (reg & DPOT_ADDR_EEPROM) {
		ctrl = DPOT_SPI_READ_EEPROM;
	}

	if (dpot->feat & F_SPI_16BIT)
		return FUNC2(dpot, ctrl);
	else if (dpot->feat & F_SPI_24BIT)
		return FUNC1(dpot, ctrl);

	return -EFAULT;
}