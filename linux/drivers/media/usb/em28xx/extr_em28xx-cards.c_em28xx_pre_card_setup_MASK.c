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
struct TYPE_2__ {int /*<<< orphan*/  tuner_gpio; } ;
struct em28xx {int model; int i2s_speed; TYPE_1__ board; } ;

/* Variables and functions */
#define  EM2820_BOARD_GADMEI_UTV310 140 
#define  EM2820_BOARD_IODATA_GVMVP_SZ 139 
#define  EM2820_BOARD_MSI_VOX_USB_2 138 
 int /*<<< orphan*/  EM2820_R08_GPIO_CTRL ; 
#define  EM2860_BOARD_EASYCAP 137 
#define  EM2860_BOARD_KAIOMY_TVNPC_U2 136 
#define  EM2860_BOARD_TERRATEC_GRABBY 135 
#define  EM2861_BOARD_KWORLD_PVRTV_300U 134 
#define  EM2861_BOARD_PLEXTOR_PX_TV100U 133 
#define  EM2870_BOARD_COMPRO_VIDEOMATE 132 
#define  EM2870_BOARD_PINNACLE_PCTV_DVB 131 
#define  EM2870_BOARD_TERRATEC_XS_MT2060 130 
#define  EM2880_BOARD_KWORLD_DVB_305U 129 
 int /*<<< orphan*/  EM2880_R04_GPO ; 
#define  EM2882_BOARD_KWORLD_ATSC_315U 128 
 int /*<<< orphan*/  EM28XX_ANALOG_MODE ; 
 int EM28XX_R06_I2C_CLK ; 
 int EM28XX_R0F_XCLK ; 
 int /*<<< orphan*/  EM28XX_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct em28xx*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct em28xx *dev)
{
	/*
	 * Set the initial XCLK and I2C clock values based on the board
	 * definition
	 */
	FUNC2(dev);

	/* request some modules */
	switch (dev->model) {
	case EM2861_BOARD_PLEXTOR_PX_TV100U:
		/* Sets the msp34xx I2S speed */
		dev->i2s_speed = 2048000;
		break;
	case EM2861_BOARD_KWORLD_PVRTV_300U:
	case EM2880_BOARD_KWORLD_DVB_305U:
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0x6d);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0x7d);
		FUNC7(10000, 11000);
		break;
	case EM2870_BOARD_COMPRO_VIDEOMATE:
		/*
		 * TODO: someone can do some cleanup here...
		 *	 not everything's needed
		 */
		FUNC4(dev, EM2880_R04_GPO, 0x00);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2880_R04_GPO, 0x01);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfd);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfc);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xdc);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfc);
		FUNC6(70);
		break;
	case EM2870_BOARD_TERRATEC_XS_MT2060:
		/*
		 * this device needs some gpio writes to get the DVB-T
		 * demod work
		 */
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xde);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC6(70);
		break;
	case EM2870_BOARD_PINNACLE_PCTV_DVB:
		/*
		 * this device needs some gpio writes to get the
		 * DVB-T demod work
		 */
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xde);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC6(70);
		break;
	case EM2820_BOARD_GADMEI_UTV310:
	case EM2820_BOARD_MSI_VOX_USB_2:
		/* enables audio for that devices */
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfd);
		break;

	case EM2882_BOARD_KWORLD_ATSC_315U:
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xff);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2880_R04_GPO, 0x00);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2880_R04_GPO, 0x08);
		FUNC7(10000, 11000);
		break;

	case EM2860_BOARD_KAIOMY_TVNPC_U2:
		FUNC5(dev, EM28XX_R0F_XCLK, "\x07", 1);
		FUNC5(dev, EM28XX_R06_I2C_CLK, "\x40", 1);
		FUNC5(dev, 0x0d, "\x42", 1);
		FUNC5(dev, 0x08, "\xfd", 1);
		FUNC7(10000, 11000);
		FUNC5(dev, 0x08, "\xff", 1);
		FUNC7(10000, 11000);
		FUNC5(dev, 0x08, "\x7f", 1);
		FUNC7(10000, 11000);
		FUNC5(dev, 0x08, "\x6b", 1);

		break;
	case EM2860_BOARD_EASYCAP:
		FUNC5(dev, 0x08, "\xf8", 1);
		break;

	case EM2820_BOARD_IODATA_GVMVP_SZ:
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xff);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xf7);
		FUNC7(10000, 11000);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfe);
		FUNC6(70);
		FUNC4(dev, EM2820_R08_GPIO_CTRL, 0xfd);
		FUNC6(70);
		break;

	case EM2860_BOARD_TERRATEC_GRABBY:
		/*
		 * HACK?: Ensure AC97 register reading is reliable before
		 * proceeding. In practice, this will wait about 1.6 seconds.
		 */
		FUNC3(dev, 0x6a90);
		break;
	}

	FUNC0(dev, dev->board.tuner_gpio);
	FUNC1(dev, EM28XX_ANALOG_MODE);

	/* Unlock device */
	FUNC1(dev, EM28XX_SUSPEND);
}