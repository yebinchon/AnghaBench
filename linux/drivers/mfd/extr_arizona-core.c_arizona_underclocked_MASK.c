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
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int ARIZONA_ADC_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_AIF1_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_AIF2_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_AIF3_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_ASRC_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_DAC_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_FX_UNDERCLOCKED_STS ; 
 int /*<<< orphan*/  ARIZONA_INTERRUPT_RAW_STATUS_8 ; 
 unsigned int ARIZONA_ISRC1_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_ISRC2_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_ISRC3_UNDERCLOCKED_STS ; 
 unsigned int ARIZONA_MIXER_UNDERCLOCKED_STS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct arizona *arizona = data;
	unsigned int val;
	int ret;

	ret = FUNC1(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_8,
			  &val);
	if (ret != 0) {
		FUNC0(arizona->dev, "Failed to read underclock status: %d\n",
			ret);
		return IRQ_NONE;
	}

	if (val & ARIZONA_AIF3_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "AIF3 underclocked\n");
	if (val & ARIZONA_AIF2_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "AIF2 underclocked\n");
	if (val & ARIZONA_AIF1_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "AIF1 underclocked\n");
	if (val & ARIZONA_ISRC3_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "ISRC3 underclocked\n");
	if (val & ARIZONA_ISRC2_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "ISRC2 underclocked\n");
	if (val & ARIZONA_ISRC1_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "ISRC1 underclocked\n");
	if (val & ARIZONA_FX_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "FX underclocked\n");
	if (val & ARIZONA_ASRC_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "ASRC underclocked\n");
	if (val & ARIZONA_DAC_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "DAC underclocked\n");
	if (val & ARIZONA_ADC_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "ADC underclocked\n");
	if (val & ARIZONA_MIXER_UNDERCLOCKED_STS)
		FUNC0(arizona->dev, "Mixer dropped sample\n");

	return IRQ_HANDLED;
}