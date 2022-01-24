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
typedef  int u8 ;
struct ene_device {int pll_freq; int rx_period_adjust; scalar_t__ hw_revision; int hw_use_gpio_0a; int hw_learning_and_tx_capable; int hw_extra_buffer; int hw_fan_input; } ;

/* Variables and functions */
 int ENE_DEFAULT_PLL_FREQ ; 
 scalar_t__ ENE_DEFAULT_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  ENE_ECHV ; 
 int /*<<< orphan*/  ENE_ECSTS ; 
 int /*<<< orphan*/  ENE_ECSTS_RSRVD ; 
 int /*<<< orphan*/  ENE_ECVER_MAJOR ; 
 int /*<<< orphan*/  ENE_ECVER_MINOR ; 
 int /*<<< orphan*/  ENE_FW1 ; 
 int ENE_FW1_HAS_EXTRA_BUF ; 
 int /*<<< orphan*/  ENE_FW2 ; 
 int ENE_FW2_FAN_INPUT ; 
 int ENE_FW2_GP0A ; 
 int ENE_FW2_LEARNING ; 
 scalar_t__ ENE_HW_B ; 
 scalar_t__ ENE_HW_C ; 
 scalar_t__ ENE_HW_D ; 
 int /*<<< orphan*/  ENE_HW_VER_OLD ; 
 int /*<<< orphan*/  ENE_PLLFRH ; 
 int /*<<< orphan*/  ENE_PLLFRL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ sample_period ; 

__attribute__((used)) static int FUNC5(struct ene_device *dev)
{
	u8 chip_major, chip_minor;
	u8 hw_revision, old_ver;
	u8 fw_reg2, fw_reg1;

	FUNC0(dev, ENE_ECSTS, ENE_ECSTS_RSRVD);
	chip_major = FUNC1(dev, ENE_ECVER_MAJOR);
	chip_minor = FUNC1(dev, ENE_ECVER_MINOR);
	FUNC2(dev, ENE_ECSTS, ENE_ECSTS_RSRVD);

	hw_revision = FUNC1(dev, ENE_ECHV);
	old_ver = FUNC1(dev, ENE_HW_VER_OLD);

	dev->pll_freq = (FUNC1(dev, ENE_PLLFRH) << 4) +
		(FUNC1(dev, ENE_PLLFRL) >> 4);

	if (sample_period != ENE_DEFAULT_SAMPLE_PERIOD)
		dev->rx_period_adjust =
			dev->pll_freq == ENE_DEFAULT_PLL_FREQ ? 2 : 4;

	if (hw_revision == 0xFF) {
		FUNC4("device seems to be disabled\n");
		FUNC4("send a mail to lirc-list@lists.sourceforge.net\n");
		FUNC4("please attach output of acpidump and dmidecode\n");
		return -ENODEV;
	}

	FUNC3("chip is 0x%02x%02x - kbver = 0x%02x, rev = 0x%02x\n",
		  chip_major, chip_minor, old_ver, hw_revision);

	FUNC3("PLL freq = %d\n", dev->pll_freq);

	if (chip_major == 0x33) {
		FUNC4("chips 0x33xx aren't supported\n");
		return -ENODEV;
	}

	if (chip_major == 0x39 && chip_minor == 0x26 && hw_revision == 0xC0) {
		dev->hw_revision = ENE_HW_C;
		FUNC3("KB3926C detected\n");
	} else if (old_ver == 0x24 && hw_revision == 0xC0) {
		dev->hw_revision = ENE_HW_B;
		FUNC3("KB3926B detected\n");
	} else {
		dev->hw_revision = ENE_HW_D;
		FUNC3("KB3926D or higher detected\n");
	}

	/* detect features hardware supports */
	if (dev->hw_revision < ENE_HW_C)
		return 0;

	fw_reg1 = FUNC1(dev, ENE_FW1);
	fw_reg2 = FUNC1(dev, ENE_FW2);

	FUNC3("Firmware regs: %02x %02x\n", fw_reg1, fw_reg2);

	dev->hw_use_gpio_0a = !!(fw_reg2 & ENE_FW2_GP0A);
	dev->hw_learning_and_tx_capable = !!(fw_reg2 & ENE_FW2_LEARNING);
	dev->hw_extra_buffer = !!(fw_reg1 & ENE_FW1_HAS_EXTRA_BUF);

	if (dev->hw_learning_and_tx_capable)
		dev->hw_fan_input = !!(fw_reg2 & ENE_FW2_FAN_INPUT);

	FUNC3("Hardware features:\n");

	if (dev->hw_learning_and_tx_capable) {
		FUNC3("* Supports transmitting & learning mode\n");
		FUNC3("   This feature is rare and therefore,\n");
		FUNC3("   you are welcome to test it,\n");
		FUNC3("   and/or contact the author via:\n");
		FUNC3("   lirc-list@lists.sourceforge.net\n");
		FUNC3("   or maximlevitsky@gmail.com\n");

		FUNC3("* Uses GPIO %s for IR raw input\n",
			  dev->hw_use_gpio_0a ? "40" : "0A");

		if (dev->hw_fan_input)
			FUNC3("* Uses unused fan feedback input as source of demodulated IR data\n");
	}

	if (!dev->hw_fan_input)
		FUNC3("* Uses GPIO %s for IR demodulated input\n",
			  dev->hw_use_gpio_0a ? "0A" : "40");

	if (dev->hw_extra_buffer)
		FUNC3("* Uses new style input buffer\n");
	return 0;
}