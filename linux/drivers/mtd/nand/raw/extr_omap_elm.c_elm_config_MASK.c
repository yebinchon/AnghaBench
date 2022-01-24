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
struct elm_info {int bch_type; int ecc_steps; int ecc_syndrome_size; } ;
struct device {int dummy; } ;
typedef  enum bch_ecc { ____Placeholder_bch_ecc } bch_ecc ;

/* Variables and functions */
 int ECC_BCH_LEVEL_MASK ; 
 int EINVAL ; 
 int ELM_ECC_SIZE ; 
 int /*<<< orphan*/  ELM_LOCATION_CONFIG ; 
 int EPROBE_DEFER ; 
 int ERROR_VECTOR_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct elm_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct elm_info*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct device *dev, enum bch_ecc bch_type,
	int ecc_steps, int ecc_step_size, int ecc_syndrome_size)
{
	u32 reg_val;
	struct elm_info *info = FUNC1(dev);

	if (!info) {
		FUNC0(dev, "Unable to configure elm - device not probed?\n");
		return -EPROBE_DEFER;
	}
	/* ELM cannot detect ECC errors for chunks > 1KB */
	if (ecc_step_size > ((ELM_ECC_SIZE + 1) / 2)) {
		FUNC0(dev, "unsupported config ecc-size=%d\n", ecc_step_size);
		return -EINVAL;
	}
	/* ELM support 8 error syndrome process */
	if (ecc_steps > ERROR_VECTOR_MAX) {
		FUNC0(dev, "unsupported config ecc-step=%d\n", ecc_steps);
		return -EINVAL;
	}

	reg_val = (bch_type & ECC_BCH_LEVEL_MASK) | (ELM_ECC_SIZE << 16);
	FUNC2(info, ELM_LOCATION_CONFIG, reg_val);
	info->bch_type		= bch_type;
	info->ecc_steps		= ecc_steps;
	info->ecc_syndrome_size	= ecc_syndrome_size;

	return 0;
}