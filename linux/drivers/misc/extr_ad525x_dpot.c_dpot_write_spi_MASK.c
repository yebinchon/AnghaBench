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
typedef  size_t u16 ;
struct dpot_data {int feat; size_t* rdac_cache; scalar_t__ uid; int /*<<< orphan*/  devid; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AD5270_ID ; 
 int /*<<< orphan*/  AD5271_ID ; 
 int /*<<< orphan*/  AD5291_ID ; 
 int /*<<< orphan*/  AD5292_ID ; 
 int /*<<< orphan*/  AD5293_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int DPOT_AD5270_1_2_4_CTRLREG ; 
 int DPOT_AD5270_1_2_4_RDAC ; 
 int DPOT_AD5270_1_2_4_STORE_XTPM ; 
 size_t DPOT_AD5270_1_2_4_UNLOCK_CMD ; 
 int DPOT_AD5291_CTRLREG ; 
 int DPOT_AD5291_RDAC ; 
 int DPOT_AD5291_STORE_XTPM ; 
 size_t DPOT_AD5291_UNLOCK_CMD ; 
 size_t DPOT_ADDR_CMD ; 
 size_t DPOT_ADDR_EEPROM ; 
 size_t DPOT_ADDR_OTP ; 
#define  DPOT_DEC_ALL 131 
#define  DPOT_DEC_ALL_6DB 130 
#define  DPOT_INC_ALL 129 
#define  DPOT_INC_ALL_6DB 128 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t DPOT_RDAC_MASK ; 
 unsigned int DPOT_SPI_DEC_ALL ; 
 unsigned int DPOT_SPI_DEC_ALL_6DB ; 
 size_t DPOT_SPI_EEPROM ; 
 unsigned int DPOT_SPI_INC_ALL ; 
 unsigned int DPOT_SPI_INC_ALL_6DB ; 
 size_t DPOT_SPI_RDAC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFAULT ; 
 int F_AD_APPDATA ; 
 int F_RDACS_WONLY ; 
 int F_SPI_16BIT ; 
 int F_SPI_24BIT ; 
 int F_SPI_8BIT ; 
 int /*<<< orphan*/  FUNC3 (struct dpot_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dpot_data*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct dpot_data*,unsigned int,size_t) ; 

__attribute__((used)) static s32 FUNC6(struct dpot_data *dpot, u8 reg, u16 value)
{
	unsigned int val = 0;

	if (!(reg & (DPOT_ADDR_EEPROM | DPOT_ADDR_CMD | DPOT_ADDR_OTP))) {
		if (dpot->feat & F_RDACS_WONLY)
			dpot->rdac_cache[reg & DPOT_RDAC_MASK] = value;

		if (dpot->feat & F_AD_APPDATA) {
			if (dpot->feat & F_SPI_8BIT) {
				val = ((reg & DPOT_RDAC_MASK) <<
					FUNC1(dpot->devid)) |
					value;
				return FUNC3(dpot, val);
			} else if (dpot->feat & F_SPI_16BIT) {
				val = ((reg & DPOT_RDAC_MASK) <<
					FUNC1(dpot->devid)) |
					value;
				return FUNC5(dpot, val >> 8,
					val & 0xFF);
			} else
				FUNC0();
		} else {
			if (dpot->uid == FUNC2(AD5291_ID) ||
				dpot->uid == FUNC2(AD5292_ID) ||
				dpot->uid == FUNC2(AD5293_ID)) {

				FUNC5(dpot, DPOT_AD5291_CTRLREG << 2,
						DPOT_AD5291_UNLOCK_CMD);

				if (dpot->uid == FUNC2(AD5291_ID))
					value = value << 2;

				return FUNC5(dpot,
					(DPOT_AD5291_RDAC << 2) |
					(value >> 8), value & 0xFF);
			} else if (dpot->uid == FUNC2(AD5270_ID) ||
				dpot->uid == FUNC2(AD5271_ID)) {
				FUNC5(dpot,
						DPOT_AD5270_1_2_4_CTRLREG << 2,
						DPOT_AD5270_1_2_4_UNLOCK_CMD);

				if (dpot->uid == FUNC2(AD5271_ID))
					value = value << 2;

				return FUNC5(dpot,
					(DPOT_AD5270_1_2_4_RDAC << 2) |
					(value >> 8), value & 0xFF);
			}
			val = DPOT_SPI_RDAC | (reg & DPOT_RDAC_MASK);
		}
	} else if (reg & DPOT_ADDR_EEPROM) {
		val = DPOT_SPI_EEPROM | (reg & DPOT_RDAC_MASK);
	} else if (reg & DPOT_ADDR_CMD) {
		switch (reg) {
		case DPOT_DEC_ALL_6DB:
			val = DPOT_SPI_DEC_ALL_6DB;
			break;
		case DPOT_INC_ALL_6DB:
			val = DPOT_SPI_INC_ALL_6DB;
			break;
		case DPOT_DEC_ALL:
			val = DPOT_SPI_DEC_ALL;
			break;
		case DPOT_INC_ALL:
			val = DPOT_SPI_INC_ALL;
			break;
		}
	} else if (reg & DPOT_ADDR_OTP) {
		if (dpot->uid == FUNC2(AD5291_ID) ||
			dpot->uid == FUNC2(AD5292_ID)) {
			return FUNC5(dpot,
				DPOT_AD5291_STORE_XTPM << 2, 0);
		} else if (dpot->uid == FUNC2(AD5270_ID) ||
			dpot->uid == FUNC2(AD5271_ID)) {
			return FUNC5(dpot,
				DPOT_AD5270_1_2_4_STORE_XTPM << 2, 0);
		}
	} else
		FUNC0();

	if (dpot->feat & F_SPI_16BIT)
		return FUNC5(dpot, val, value);
	else if (dpot->feat & F_SPI_24BIT)
		return FUNC4(dpot, val, value);

	return -EFAULT;
}