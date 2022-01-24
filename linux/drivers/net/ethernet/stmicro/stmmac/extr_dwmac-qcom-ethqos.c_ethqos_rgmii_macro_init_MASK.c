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
struct qcom_ethqos {int speed; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int,int) ; 
 int RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL ; 
 int RGMII_CONFIG2_RSVD_CONFIG15 ; 
 int RGMII_CONFIG2_RX_PROG_SWAP ; 
 int RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN ; 
 int RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN ; 
 int RGMII_CONFIG_BYPASS_TX_ID_EN ; 
 int RGMII_CONFIG_DDR_MODE ; 
 int RGMII_CONFIG_INTF_SEL ; 
 int RGMII_CONFIG_LOOPBACK_EN ; 
 int RGMII_CONFIG_MAX_SPD_PRG_2 ; 
 int RGMII_CONFIG_MAX_SPD_PRG_9 ; 
 int RGMII_CONFIG_POS_NEG_DATA_SEL ; 
 int RGMII_CONFIG_PROG_SWAP ; 
 int /*<<< orphan*/  RGMII_IO_MACRO_CONFIG ; 
 int /*<<< orphan*/  RGMII_IO_MACRO_CONFIG2 ; 
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY ; 
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE ; 
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN ; 
 int SDCC_DDR_CONFIG_PRG_DLY_EN ; 
 int SDCC_DDR_CONFIG_PRG_RCLK_DLY ; 
 int /*<<< orphan*/  SDCC_HC_REG_DDR_CONFIG ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_ethqos*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qcom_ethqos *ethqos)
{
	/* Disable loopback mode */
	FUNC3(ethqos, RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN,
		      0, RGMII_IO_MACRO_CONFIG2);

	/* Select RGMII, write 0 to interface select */
	FUNC3(ethqos, RGMII_CONFIG_INTF_SEL,
		      0, RGMII_IO_MACRO_CONFIG);

	switch (ethqos->speed) {
	case SPEED_1000:
		FUNC3(ethqos, RGMII_CONFIG_DDR_MODE,
			      RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
			      0, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
			      RGMII_CONFIG_POS_NEG_DATA_SEL,
			      RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_PROG_SWAP,
			      RGMII_CONFIG_PROG_SWAP, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
			      RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
			      RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
			      RGMII_CONFIG2_RX_PROG_SWAP,
			      RGMII_IO_MACRO_CONFIG2);

		/* Set PRG_RCLK_DLY to 57 for 1.8 ns delay */
		FUNC3(ethqos, SDCC_DDR_CONFIG_PRG_RCLK_DLY,
			      57, SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, SDCC_DDR_CONFIG_PRG_DLY_EN,
			      SDCC_DDR_CONFIG_PRG_DLY_EN,
			      SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_LOOPBACK_EN,
			      RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
		break;

	case SPEED_100:
		FUNC3(ethqos, RGMII_CONFIG_DDR_MODE,
			      RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
			      RGMII_CONFIG_BYPASS_TX_ID_EN,
			      RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
			      0, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_PROG_SWAP,
			      0, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
			      RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
			      RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG_MAX_SPD_PRG_2,
			      FUNC0(6), RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
			      0, RGMII_IO_MACRO_CONFIG2);
		/* Write 0x5 to PRG_RCLK_DLY_CODE */
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE,
			      (FUNC0(29) | FUNC0(27)), SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
			      SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
			      SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
			      SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
			      SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_LOOPBACK_EN,
			      RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
		break;

	case SPEED_10:
		FUNC3(ethqos, RGMII_CONFIG_DDR_MODE,
			      RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
			      RGMII_CONFIG_BYPASS_TX_ID_EN,
			      RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
			      0, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_PROG_SWAP,
			      0, RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG_MAX_SPD_PRG_9,
			      FUNC0(12) | FUNC1(9, 8),
			      RGMII_IO_MACRO_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
			      0, RGMII_IO_MACRO_CONFIG2);
		FUNC3(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
			      0, RGMII_IO_MACRO_CONFIG2);
		/* Write 0x5 to PRG_RCLK_DLY_CODE */
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE,
			      (FUNC0(29) | FUNC0(27)), SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
			      SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
			      SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
			      SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
			      SDCC_HC_REG_DDR_CONFIG);
		FUNC3(ethqos, RGMII_CONFIG_LOOPBACK_EN,
			      RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
		break;
	default:
		FUNC2(&ethqos->pdev->dev,
			"Invalid speed %d\n", ethqos->speed);
		return -EINVAL;
	}

	return 0;
}