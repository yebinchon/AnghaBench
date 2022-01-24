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
struct cx23885_dev {int board; } ;

/* Variables and functions */
#define  CX23885_BOARD_AVERMEDIA_HC81R 180 
#define  CX23885_BOARD_COMPRO_VIDEOMATE_E650F 179 
#define  CX23885_BOARD_COMPRO_VIDEOMATE_E800 178 
#define  CX23885_BOARD_DVBSKY_S950 177 
#define  CX23885_BOARD_DVBSKY_S950C 176 
#define  CX23885_BOARD_DVBSKY_S952 175 
#define  CX23885_BOARD_DVBSKY_T9580 174 
#define  CX23885_BOARD_DVBSKY_T980C 173 
#define  CX23885_BOARD_DVBSKY_T982 172 
#define  CX23885_BOARD_DVICO_FUSIONHDTV_7_DUAL_EXP 171 
#define  CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP 170 
#define  CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP2 169 
#define  CX23885_BOARD_GOTVIEW_X5_3D_HYBRID 168 
#define  CX23885_BOARD_HAUPPAUGE_HVR1200 167 
#define  CX23885_BOARD_HAUPPAUGE_HVR1210 166 
#define  CX23885_BOARD_HAUPPAUGE_HVR1250 165 
#define  CX23885_BOARD_HAUPPAUGE_HVR1255 164 
#define  CX23885_BOARD_HAUPPAUGE_HVR1255_22111 163 
#define  CX23885_BOARD_HAUPPAUGE_HVR1265_K4 162 
#define  CX23885_BOARD_HAUPPAUGE_HVR1270 161 
#define  CX23885_BOARD_HAUPPAUGE_HVR1275 160 
#define  CX23885_BOARD_HAUPPAUGE_HVR1290 159 
#define  CX23885_BOARD_HAUPPAUGE_HVR1400 158 
#define  CX23885_BOARD_HAUPPAUGE_HVR1500 157 
#define  CX23885_BOARD_HAUPPAUGE_HVR1500Q 156 
#define  CX23885_BOARD_HAUPPAUGE_HVR1700 155 
#define  CX23885_BOARD_HAUPPAUGE_HVR1800 154 
#define  CX23885_BOARD_HAUPPAUGE_HVR1850 153 
#define  CX23885_BOARD_HAUPPAUGE_HVR4400 152 
#define  CX23885_BOARD_HAUPPAUGE_HVR5525 151 
#define  CX23885_BOARD_HAUPPAUGE_QUADHD_ATSC 150 
#define  CX23885_BOARD_HAUPPAUGE_QUADHD_ATSC_885 149 
#define  CX23885_BOARD_HAUPPAUGE_QUADHD_DVB 148 
#define  CX23885_BOARD_HAUPPAUGE_QUADHD_DVB_885 147 
#define  CX23885_BOARD_HAUPPAUGE_STARBURST 146 
#define  CX23885_BOARD_HAUPPAUGE_STARBURST2 145 
#define  CX23885_BOARD_LEADTEK_WINFAST_PXDVR3200_H 144 
#define  CX23885_BOARD_LEADTEK_WINFAST_PXDVR3200_H_XC4000 143 
#define  CX23885_BOARD_LEADTEK_WINFAST_PXPVR2200 142 
#define  CX23885_BOARD_LEADTEK_WINFAST_PXTV1200 141 
#define  CX23885_BOARD_MAGICPRO_PROHDTVE2 140 
#define  CX23885_BOARD_MYGICA_X8506 139 
#define  CX23885_BOARD_MYGICA_X8507 138 
#define  CX23885_BOARD_MYGICA_X8558PRO 137 
#define  CX23885_BOARD_NETUP_DUAL_DVBS2_CI 136 
#define  CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF 135 
#define  CX23885_BOARD_PROF_8000 134 
#define  CX23885_BOARD_TBS_6920 133 
#define  CX23885_BOARD_TBS_6980 132 
#define  CX23885_BOARD_TBS_6981 131 
#define  CX23885_BOARD_TT_CT2_4500_CI 130 
#define  CX23885_BOARD_VIEWCAST_260E 129 
#define  CX23885_BOARD_VIEWCAST_460E 128 
 int /*<<< orphan*/  GP0_IO ; 
 int GPIO_0 ; 
 int GPIO_1 ; 
 int GPIO_11 ; 
 int GPIO_13 ; 
 int GPIO_14 ; 
 int GPIO_15 ; 
 int GPIO_2 ; 
 int GPIO_5 ; 
 int GPIO_6 ; 
 int GPIO_8 ; 
 int GPIO_9 ; 
 int /*<<< orphan*/  GPIO_ISM ; 
 int /*<<< orphan*/  MC417_CTL ; 
 int /*<<< orphan*/  MC417_OEN ; 
 int /*<<< orphan*/  MC417_RWD ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cx23885_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

void FUNC11(struct cx23885_dev *dev)
{
	switch (dev->board) {
	case CX23885_BOARD_HAUPPAUGE_HVR1250:
		/* GPIO-0 cx24227 demodulator reset */
		FUNC4(GP0_IO, 0x00010001); /* Bring the part out of reset */
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1500:
		/* GPIO-0 cx24227 demodulator */
		/* GPIO-2 xc3028 tuner */

		/* Put the parts into reset */
		FUNC4(GP0_IO, 0x00050000);
		FUNC3(GP0_IO, 0x00000005);
		FUNC9(5);

		/* Bring the parts out of reset */
		FUNC4(GP0_IO, 0x00050005);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1500Q:
		/* GPIO-0 cx24227 demodulator reset */
		/* GPIO-2 xc5000 tuner reset */
		FUNC4(GP0_IO, 0x00050005); /* Bring the part out of reset */
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1800:
		/* GPIO-0 656_CLK */
		/* GPIO-1 656_D0 */
		/* GPIO-2 8295A Reset */
		/* GPIO-3-10 cx23417 data0-7 */
		/* GPIO-11-14 cx23417 addr0-3 */
		/* GPIO-15-18 cx23417 READY, CS, RD, WR */
		/* GPIO-19 IR_RX */

		/* CX23417 GPIO's */
		/* EIO15 Zilog Reset */
		/* EIO14 S5H1409/CX24227 Reset */
		FUNC7(dev, GPIO_15 | GPIO_14, 1);

		/* Put the demod into reset and protect the eeprom */
		FUNC6(dev, GPIO_15 | GPIO_14);
		FUNC9(100);

		/* Bring the demod and blaster out of reset */
		FUNC8(dev, GPIO_15 | GPIO_14);
		FUNC9(100);

		/* Force the TDA8295A into reset and back */
		FUNC1(dev, GPIO_2, 1);
		FUNC2(dev, GPIO_2);
		FUNC9(20);
		FUNC0(dev, GPIO_2);
		FUNC9(20);
		FUNC2(dev, GPIO_2);
		FUNC9(20);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1200:
		/* GPIO-0 tda10048 demodulator reset */
		/* GPIO-2 tda18271 tuner reset */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x00050000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x00000005);
		FUNC9(20);
		FUNC4(GP0_IO, 0x00050005);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1700:
		/* GPIO-0 TDA10048 demodulator reset */
		/* GPIO-2 TDA8295A Reset */
		/* GPIO-3-10 cx23417 data0-7 */
		/* GPIO-11-14 cx23417 addr0-3 */
		/* GPIO-15-18 cx23417 READY, CS, RD, WR */

		/* The following GPIO's are on the interna AVCore (cx25840) */
		/* GPIO-19 IR_RX */
		/* GPIO-20 IR_TX 416/DVBT Select */
		/* GPIO-21 IIS DAT */
		/* GPIO-22 IIS WCLK */
		/* GPIO-23 IIS BCLK */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x00050000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x00000005);
		FUNC9(20);
		FUNC4(GP0_IO, 0x00050005);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1400:
		/* GPIO-0  Dibcom7000p demodulator reset */
		/* GPIO-2  xc3028L tuner reset */
		/* GPIO-13 LED */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x00050000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x00000005);
		FUNC9(20);
		FUNC4(GP0_IO, 0x00050005);
		break;
	case CX23885_BOARD_DVICO_FUSIONHDTV_7_DUAL_EXP:
		/* GPIO-0 xc5000 tuner reset i2c bus 0 */
		/* GPIO-1 s5h1409 demod reset i2c bus 0 */
		/* GPIO-2 xc5000 tuner reset i2c bus 1 */
		/* GPIO-3 s5h1409 demod reset i2c bus 0 */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x000f0000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x0000000f);
		FUNC9(20);
		FUNC4(GP0_IO, 0x000f000f);
		break;
	case CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP:
	case CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP2:
		/* GPIO-0 portb xc3028 reset */
		/* GPIO-1 portb zl10353 reset */
		/* GPIO-2 portc xc3028 reset */
		/* GPIO-3 portc zl10353 reset */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x000f0000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x0000000f);
		FUNC9(20);
		FUNC4(GP0_IO, 0x000f000f);
		break;
	case CX23885_BOARD_LEADTEK_WINFAST_PXDVR3200_H:
	case CX23885_BOARD_LEADTEK_WINFAST_PXPVR2200:
	case CX23885_BOARD_LEADTEK_WINFAST_PXDVR3200_H_XC4000:
	case CX23885_BOARD_COMPRO_VIDEOMATE_E650F:
	case CX23885_BOARD_COMPRO_VIDEOMATE_E800:
	case CX23885_BOARD_LEADTEK_WINFAST_PXTV1200:
		/* GPIO-2  xc3028 tuner reset */

		/* The following GPIO's are on the internal AVCore (cx25840) */
		/* GPIO-?  zl10353 demod reset */

		/* Put the parts into reset and back */
		FUNC4(GP0_IO, 0x00040000);
		FUNC9(20);
		FUNC3(GP0_IO, 0x00000004);
		FUNC9(20);
		FUNC4(GP0_IO, 0x00040004);
		break;
	case CX23885_BOARD_TBS_6920:
	case CX23885_BOARD_TBS_6980:
	case CX23885_BOARD_TBS_6981:
	case CX23885_BOARD_PROF_8000:
		FUNC5(MC417_CTL, 0x00000036);
		FUNC5(MC417_OEN, 0x00001000);
		FUNC4(MC417_RWD, 0x00000002);
		FUNC9(200);
		FUNC3(MC417_RWD, 0x00000800);
		FUNC9(200);
		FUNC4(MC417_RWD, 0x00000800);
		FUNC9(200);
		break;
	case CX23885_BOARD_NETUP_DUAL_DVBS2_CI:
		/* GPIO-0 INTA from CiMax1
		   GPIO-1 INTB from CiMax2
		   GPIO-2 reset chips
		   GPIO-3 to GPIO-10 data/addr for CA
		   GPIO-11 ~CS0 to CiMax1
		   GPIO-12 ~CS1 to CiMax2
		   GPIO-13 ADL0 load LSB addr
		   GPIO-14 ADL1 load MSB addr
		   GPIO-15 ~RDY from CiMax
		   GPIO-17 ~RD to CiMax
		   GPIO-18 ~WR to CiMax
		 */
		FUNC4(GP0_IO, 0x00040000); /* GPIO as out */
		/* GPIO1 and GPIO2 as INTA and INTB from CiMaxes, reset low */
		FUNC3(GP0_IO, 0x00030004);
		FUNC9(100);/* reset delay */
		FUNC4(GP0_IO, 0x00040004); /* GPIO as out, reset high */
		FUNC5(MC417_CTL, 0x00000037);/* enable GPIO3-18 pins */
		/* GPIO-15 IN as ~ACK, rest as OUT */
		FUNC5(MC417_OEN, 0x00001000);
		/* ~RD, ~WR high; ADL0, ADL1 low; ~CS0, ~CS1 high */
		FUNC5(MC417_RWD, 0x0000c300);
		/* enable irq */
		FUNC5(GPIO_ISM, 0x00000000);/* INTERRUPTS active low*/
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1270:
	case CX23885_BOARD_HAUPPAUGE_HVR1275:
	case CX23885_BOARD_HAUPPAUGE_HVR1255:
	case CX23885_BOARD_HAUPPAUGE_HVR1255_22111:
	case CX23885_BOARD_HAUPPAUGE_HVR1210:
		/* GPIO-5 RF Control: 0 = RF1 Terrestrial, 1 = RF2 Cable */
		/* GPIO-6 I2C Gate which can isolate the demod from the bus */
		/* GPIO-9 Demod reset */

		/* Put the parts into reset and back */
		FUNC1(dev, GPIO_9 | GPIO_6 | GPIO_5, 1);
		FUNC2(dev, GPIO_9 | GPIO_6 | GPIO_5);
		FUNC0(dev, GPIO_9);
		FUNC9(20);
		FUNC2(dev, GPIO_9);
		break;
	case CX23885_BOARD_MYGICA_X8506:
	case CX23885_BOARD_MAGICPRO_PROHDTVE2:
	case CX23885_BOARD_MYGICA_X8507:
		/* GPIO-0 (0)Analog / (1)Digital TV */
		/* GPIO-1 reset XC5000 */
		/* GPIO-2 demod reset */
		FUNC1(dev, GPIO_0 | GPIO_1 | GPIO_2, 1);
		FUNC0(dev, GPIO_1 | GPIO_2);
		FUNC9(100);
		FUNC2(dev, GPIO_0 | GPIO_1 | GPIO_2);
		FUNC9(100);
		break;
	case CX23885_BOARD_MYGICA_X8558PRO:
		/* GPIO-0 reset first ATBM8830 */
		/* GPIO-1 reset second ATBM8830 */
		FUNC1(dev, GPIO_0 | GPIO_1, 1);
		FUNC0(dev, GPIO_0 | GPIO_1);
		FUNC9(100);
		FUNC2(dev, GPIO_0 | GPIO_1);
		FUNC9(100);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1850:
	case CX23885_BOARD_HAUPPAUGE_HVR1290:
		/* GPIO-0 656_CLK */
		/* GPIO-1 656_D0 */
		/* GPIO-2 Wake# */
		/* GPIO-3-10 cx23417 data0-7 */
		/* GPIO-11-14 cx23417 addr0-3 */
		/* GPIO-15-18 cx23417 READY, CS, RD, WR */
		/* GPIO-19 IR_RX */
		/* GPIO-20 C_IR_TX */
		/* GPIO-21 I2S DAT */
		/* GPIO-22 I2S WCLK */
		/* GPIO-23 I2S BCLK */
		/* ALT GPIO: EXP GPIO LATCH */

		/* CX23417 GPIO's */
		/* GPIO-14 S5H1411/CX24228 Reset */
		/* GPIO-13 EEPROM write protect */
		FUNC7(dev, GPIO_14 | GPIO_13, 1);

		/* Put the demod into reset and protect the eeprom */
		FUNC6(dev, GPIO_14 | GPIO_13);
		FUNC9(100);

		/* Bring the demod out of reset */
		FUNC8(dev, GPIO_14);
		FUNC9(100);

		/* CX24228 GPIO */
		/* Connected to IF / Mux */
		break;
	case CX23885_BOARD_GOTVIEW_X5_3D_HYBRID:
		FUNC4(GP0_IO, 0x00010001); /* Bring the part out of reset */
		break;
	case CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF:
		/* GPIO-0 ~INT in
		   GPIO-1 TMS out
		   GPIO-2 ~reset chips out
		   GPIO-3 to GPIO-10 data/addr for CA in/out
		   GPIO-11 ~CS out
		   GPIO-12 ADDR out
		   GPIO-13 ~WR out
		   GPIO-14 ~RD out
		   GPIO-15 ~RDY in
		   GPIO-16 TCK out
		   GPIO-17 TDO in
		   GPIO-18 TDI out
		 */
		FUNC4(GP0_IO, 0x00060000); /* GPIO-1,2 as out */
		/* GPIO-0 as INT, reset & TMS low */
		FUNC3(GP0_IO, 0x00010006);
		FUNC9(100);/* reset delay */
		FUNC4(GP0_IO, 0x00000004); /* reset high */
		FUNC5(MC417_CTL, 0x00000037);/* enable GPIO-3..18 pins */
		/* GPIO-17 is TDO in, GPIO-15 is ~RDY in, rest is out */
		FUNC5(MC417_OEN, 0x00005000);
		/* ~RD, ~WR high; ADDR low; ~CS high */
		FUNC5(MC417_RWD, 0x00000d00);
		/* enable irq */
		FUNC5(GPIO_ISM, 0x00000000);/* INTERRUPTS active low*/
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR4400:
	case CX23885_BOARD_HAUPPAUGE_STARBURST:
		/* GPIO-8 tda10071 demod reset */
		/* GPIO-9 si2165 demod reset (only HVR4400/HVR5500)*/

		/* Put the parts into reset and back */
		FUNC1(dev, GPIO_8 | GPIO_9, 1);

		FUNC0(dev, GPIO_8 | GPIO_9);
		FUNC9(100);
		FUNC2(dev, GPIO_8 | GPIO_9);
		FUNC9(100);

		break;
	case CX23885_BOARD_AVERMEDIA_HC81R:
		FUNC3(MC417_CTL, 1);
		/* GPIO-0,1,2 setup direction as output */
		FUNC4(GP0_IO, 0x00070000);
		FUNC10(10000, 11000);
		/* AF9013 demod reset */
		FUNC4(GP0_IO, 0x00010001);
		FUNC10(10000, 11000);
		FUNC3(GP0_IO, 0x00010001);
		FUNC10(10000, 11000);
		FUNC4(GP0_IO, 0x00010001);
		FUNC10(10000, 11000);
		/* demod tune? */
		FUNC3(GP0_IO, 0x00030003);
		FUNC10(10000, 11000);
		FUNC4(GP0_IO, 0x00020002);
		FUNC10(10000, 11000);
		FUNC4(GP0_IO, 0x00010001);
		FUNC10(10000, 11000);
		FUNC3(GP0_IO, 0x00020002);
		/* XC3028L tuner reset */
		FUNC4(GP0_IO, 0x00040004);
		FUNC3(GP0_IO, 0x00040004);
		FUNC4(GP0_IO, 0x00040004);
		FUNC9(60);
		break;
	case CX23885_BOARD_DVBSKY_T9580:
	case CX23885_BOARD_DVBSKY_S952:
	case CX23885_BOARD_DVBSKY_T982:
		/* enable GPIO3-18 pins */
		FUNC5(MC417_CTL, 0x00000037);
		FUNC1(dev, GPIO_2 | GPIO_11, 1);
		FUNC0(dev, GPIO_2 | GPIO_11);
		FUNC9(100);
		FUNC2(dev, GPIO_2 | GPIO_11);
		break;
	case CX23885_BOARD_DVBSKY_T980C:
	case CX23885_BOARD_DVBSKY_S950C:
	case CX23885_BOARD_TT_CT2_4500_CI:
		/*
		 * GPIO-0 INTA from CiMax, input
		 * GPIO-1 reset CiMax, output, high active
		 * GPIO-2 reset demod, output, low active
		 * GPIO-3 to GPIO-10 data/addr for CAM
		 * GPIO-11 ~CS0 to CiMax1
		 * GPIO-12 ~CS1 to CiMax2
		 * GPIO-13 ADL0 load LSB addr
		 * GPIO-14 ADL1 load MSB addr
		 * GPIO-15 ~RDY from CiMax
		 * GPIO-17 ~RD to CiMax
		 * GPIO-18 ~WR to CiMax
		 */

		FUNC4(GP0_IO, 0x00060002); /* GPIO 1/2 as output */
		FUNC3(GP0_IO, 0x00010004); /* GPIO 0 as input */
		FUNC9(100); /* reset delay */
		FUNC4(GP0_IO, 0x00060004); /* GPIO as out, reset high */
		FUNC3(GP0_IO, 0x00010002);
		FUNC5(MC417_CTL, 0x00000037); /* enable GPIO3-18 pins */

		/* GPIO-15 IN as ~ACK, rest as OUT */
		FUNC5(MC417_OEN, 0x00001000);

		/* ~RD, ~WR high; ADL0, ADL1 low; ~CS0, ~CS1 high */
		FUNC5(MC417_RWD, 0x0000c300);

		/* enable irq */
		FUNC5(GPIO_ISM, 0x00000000); /* INTERRUPTS active low */
		break;
	case CX23885_BOARD_DVBSKY_S950:
		FUNC1(dev, GPIO_2, 1);
		FUNC0(dev, GPIO_2);
		FUNC9(100);
		FUNC2(dev, GPIO_2);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR5525:
	case CX23885_BOARD_HAUPPAUGE_STARBURST2:
		/*
		 * HVR5525 GPIO Details:
		 *  GPIO-00 IR_WIDE
		 *  GPIO-02 wake#
		 *  GPIO-03 VAUX Pres.
		 *  GPIO-07 PROG#
		 *  GPIO-08 SAT_RESN
		 *  GPIO-09 TER_RESN
		 *  GPIO-10 B2_SENSE
		 *  GPIO-11 B1_SENSE
		 *  GPIO-15 IR_LED_STATUS
		 *  GPIO-19 IR_NARROW
		 *  GPIO-20 Blauster1
		 *  ALTGPIO VAUX_SWITCH
		 *  AUX_PLL_CLK : Blaster2
		 */
		/* Put the parts into reset and back */
		FUNC1(dev, GPIO_8 | GPIO_9, 1);
		FUNC0(dev, GPIO_8 | GPIO_9);
		FUNC9(100);
		FUNC2(dev, GPIO_8 | GPIO_9);
		FUNC9(100);
		break;
	case CX23885_BOARD_VIEWCAST_260E:
	case CX23885_BOARD_VIEWCAST_460E:
		/* For documentation purposes, it's worth noting that this
		 * card does not have any GPIO's connected to subcomponents.
		 */
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1265_K4:
	case CX23885_BOARD_HAUPPAUGE_QUADHD_DVB:
	case CX23885_BOARD_HAUPPAUGE_QUADHD_DVB_885:
	case CX23885_BOARD_HAUPPAUGE_QUADHD_ATSC:
	case CX23885_BOARD_HAUPPAUGE_QUADHD_ATSC_885:
		/*
		 * GPIO-08 TER1_RESN
		 * GPIO-09 TER2_RESN
		 */
		/* Put the parts into reset and back */
		FUNC1(dev, GPIO_8 | GPIO_9, 1);
		FUNC0(dev, GPIO_8 | GPIO_9);
		FUNC9(100);
		FUNC2(dev, GPIO_8 | GPIO_9);
		FUNC9(100);
		break;
	}
}