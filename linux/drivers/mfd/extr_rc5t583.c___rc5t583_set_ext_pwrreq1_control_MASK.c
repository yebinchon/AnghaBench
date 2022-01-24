#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int ds_pos_bit; int reg_add; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int RC5T583_DS_DC0 ; 
 int RC5T583_DS_LDO4 ; 
 int RICOH_ONOFFSEL_REG ; 
 int RICOH_SWCTL_REG ; 
 TYPE_1__* deepsleep_data ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int,int*) ; 
 int FUNC3 (struct device*,int,int) ; 
 int FUNC4 (struct device*,int,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
	int id, int ext_pwr, int slots)
{
	int ret;
	uint8_t sleepseq_val = 0;
	unsigned int en_bit;
	unsigned int slot_bit;

	if (id == RC5T583_DS_DC0) {
		FUNC1(dev, "PWRREQ1 is invalid control for rail %d\n", id);
		return -EINVAL;
	}

	en_bit = deepsleep_data[id].ds_pos_bit;
	slot_bit = en_bit + 1;
	ret = FUNC2(dev, deepsleep_data[id].reg_add, &sleepseq_val);
	if (ret < 0) {
		FUNC1(dev, "Error in reading reg 0x%x\n",
				deepsleep_data[id].reg_add);
		return ret;
	}

	sleepseq_val &= ~(0xF << en_bit);
	sleepseq_val |= FUNC0(en_bit);
	sleepseq_val |= ((slots & 0x7) << slot_bit);
	ret = FUNC3(dev, RICOH_ONOFFSEL_REG, FUNC0(1));
	if (ret < 0) {
		FUNC1(dev, "Error in updating the 0x%02x register\n",
				RICOH_ONOFFSEL_REG);
		return ret;
	}

	ret = FUNC4(dev, deepsleep_data[id].reg_add, sleepseq_val);
	if (ret < 0) {
		FUNC1(dev, "Error in writing reg 0x%x\n",
				deepsleep_data[id].reg_add);
		return ret;
	}

	if (id == RC5T583_DS_LDO4) {
		ret = FUNC4(dev, RICOH_SWCTL_REG, 0x1);
		if (ret < 0)
			FUNC1(dev, "Error in writing reg 0x%x\n",
				RICOH_SWCTL_REG);
	}
	return ret;
}