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
struct adv7180_state {TYPE_1__* chip_info; } ;
typedef  enum adv7182_input_type { ____Placeholder_adv7182_input_type } adv7182_input_type ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ADV7180_FLAG_V2 ; 
 scalar_t__ ADV7180_REG_AGC_ADJ1 ; 
 scalar_t__ ADV7180_REG_AGC_ADJ2 ; 
 scalar_t__ ADV7180_REG_CLAMP_ADJ ; 
 scalar_t__ ADV7180_REG_CVBS_TRIM ; 
 scalar_t__ ADV7180_REG_DIFF_MODE ; 
 scalar_t__ ADV7180_REG_INPUT_CONTROL ; 
 scalar_t__ ADV7180_REG_RES_CIR ; 
 scalar_t__ ADV7180_REG_RST_CLAMP ; 
 scalar_t__ ADV7180_REG_SHAP_FILTER_CTL_1 ; 
#define  ADV7182_INPUT_TYPE_CVBS 129 
#define  ADV7182_INPUT_TYPE_DIFF_CVBS 128 
 unsigned int FUNC0 (unsigned int*) ; 
 int FUNC1 (struct adv7180_state*,scalar_t__,int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int** adv7182_lbias_settings ; 
 unsigned int** adv7280_lbias_settings ; 

__attribute__((used)) static int FUNC3(struct adv7180_state *state, unsigned int input)
{
	enum adv7182_input_type input_type;
	unsigned int *lbias;
	unsigned int i;
	int ret;

	ret = FUNC1(state, ADV7180_REG_INPUT_CONTROL, input);
	if (ret)
		return ret;

	/* Reset clamp circuitry - ADI recommended writes */
	FUNC1(state, ADV7180_REG_RST_CLAMP, 0x00);
	FUNC1(state, ADV7180_REG_RST_CLAMP, 0xff);

	input_type = FUNC2(input);

	switch (input_type) {
	case ADV7182_INPUT_TYPE_CVBS:
	case ADV7182_INPUT_TYPE_DIFF_CVBS:
		/* ADI recommends to use the SH1 filter */
		FUNC1(state, ADV7180_REG_SHAP_FILTER_CTL_1, 0x41);
		break;
	default:
		FUNC1(state, ADV7180_REG_SHAP_FILTER_CTL_1, 0x01);
		break;
	}

	if (state->chip_info->flags & ADV7180_FLAG_V2)
		lbias = adv7280_lbias_settings[input_type];
	else
		lbias = adv7182_lbias_settings[input_type];

	for (i = 0; i < FUNC0(adv7182_lbias_settings[0]); i++)
		FUNC1(state, ADV7180_REG_CVBS_TRIM + i, lbias[i]);

	if (input_type == ADV7182_INPUT_TYPE_DIFF_CVBS) {
		/* ADI required writes to make differential CVBS work */
		FUNC1(state, ADV7180_REG_RES_CIR, 0xa8);
		FUNC1(state, ADV7180_REG_CLAMP_ADJ, 0x90);
		FUNC1(state, ADV7180_REG_DIFF_MODE, 0xb0);
		FUNC1(state, ADV7180_REG_AGC_ADJ1, 0x08);
		FUNC1(state, ADV7180_REG_AGC_ADJ2, 0xa0);
	} else {
		FUNC1(state, ADV7180_REG_RES_CIR, 0xf0);
		FUNC1(state, ADV7180_REG_CLAMP_ADJ, 0xd0);
		FUNC1(state, ADV7180_REG_DIFF_MODE, 0x10);
		FUNC1(state, ADV7180_REG_AGC_ADJ1, 0x9c);
		FUNC1(state, ADV7180_REG_AGC_ADJ2, 0x00);
	}

	return 0;
}