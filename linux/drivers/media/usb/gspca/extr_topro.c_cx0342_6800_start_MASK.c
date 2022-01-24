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
struct sd {scalar_t__ sensor; int /*<<< orphan*/  red; int /*<<< orphan*/  blue; } ;
struct gspca_dev {int /*<<< orphan*/  gain; int /*<<< orphan*/  exposure; } ;
struct cmd {int member_1; int /*<<< orphan*/  const member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd const*) ; 
#define  CX0342_ADCGN 184 
#define  CX0342_ADC_CTL 183 
#define  CX0342_BYPASS_MODE 182 
#define  CX0342_CLOCK_GEN 181 
#define  CX0342_DATA_OVERFLOW_H 180 
#define  CX0342_DATA_OVERFLOW_L 179 
#define  CX0342_DATA_UNDERFLOW_H 178 
#define  CX0342_DATA_UNDERFLOW_L 177 
 int /*<<< orphan*/  const CX0342_EXPO_LINE_H ; 
#define  CX0342_GLOBAL_GAIN 176 
#define  CX0342_GPXLTHD_L 175 
#define  CX0342_G_GAP_H 174 
#define  CX0342_G_GAP_L 173 
#define  CX0342_IDLE_CTRL 172 
#define  CX0342_LDOSEL 171 
#define  CX0342_LVRST_BLBIAS 170 
#define  CX0342_OUTPUT_CTRL 169 
#define  CX0342_PLANETHD_H 168 
#define  CX0342_PLANETHD_L 167 
#define  CX0342_RAMP_RIV 166 
#define  CX0342_RBPXLTHD_L 165 
#define  CX0342_RB_GAP_H 164 
#define  CX0342_RB_GAP_L 163 
#define  CX0342_RST_OVERFLOW_H 162 
#define  CX0342_RST_OVERFLOW_L 161 
#define  CX0342_SPV_VALUE_H 160 
#define  CX0342_SPV_VALUE_L 159 
#define  CX0342_SYS_CTRL_0 158 
#define  CX0342_VTHSEL 157 
 scalar_t__ SENSOR_CX0342 ; 
#define  TP6800_R10_SIF_TYPE 156 
#define  TP6800_R12_SIF_ADDR_S 155 
#define  TP6800_R16_GPIO_PD 154 
#define  TP6800_R17_GPIO_IO 153 
#define  TP6800_R21_ENDP_1_CTL 152 
#define  TP6800_R2F_TIMING_CFG 151 
#define  TP6800_R30_SENSOR_CFG 150 
#define  TP6800_R31_PIXEL_START 149 
#define  TP6800_R32_PIXEL_END_L 148 
#define  TP6800_R33_PIXEL_END_H 147 
#define  TP6800_R34_LINE_START 146 
#define  TP6800_R35_LINE_END_L 145 
#define  TP6800_R36_LINE_END_H 144 
#define  TP6800_R37_FRONT_DARK_ST 143 
#define  TP6800_R38_FRONT_DARK_END 142 
#define  TP6800_R39_REAR_DARK_ST_L 141 
#define  TP6800_R3A_REAR_DARK_ST_H 140 
#define  TP6800_R3B_REAR_DARK_END_L 139 
#define  TP6800_R3C_REAR_DARK_END_H 138 
#define  TP6800_R3D_HORIZ_DARK_LINE_L 137 
#define  TP6800_R3E_HORIZ_DARK_LINE_H 136 
#define  TP6800_R50 135 
#define  TP6800_R51 134 
#define  TP6800_R52 133 
#define  TP6800_R53 132 
#define  TP6800_R54_DARK_CFG 131 
#define  TP6800_R5C_EDGE_THRLD 130 
#define  TP6800_R78_FORMAT 129 
#define  TP6800_R7A_BLK_THRLD 128 
 struct cmd const* cx0342_timing_seq ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,struct cmd const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,struct cmd const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	static const struct cmd reg_init[] = {
		/* fixme: is this useful? */
		{TP6800_R17_GPIO_IO, 0x9f},
		{TP6800_R16_GPIO_PD, 0x40},
		{TP6800_R10_SIF_TYPE, 0x00},	/* i2c 8 bits */
		{TP6800_R50, 0x00},
		{TP6800_R51, 0x00},
		{TP6800_R52, 0xff},
		{TP6800_R53, 0x03},
		{TP6800_R54_DARK_CFG, 0x07},
		{TP6800_R5C_EDGE_THRLD, 0x40},
		{TP6800_R7A_BLK_THRLD, 0x40},
		{TP6800_R2F_TIMING_CFG, 0x17},
		{TP6800_R30_SENSOR_CFG, 0x18},	/* G1B..RG0 */
		{TP6800_R37_FRONT_DARK_ST, 0x00},
		{TP6800_R38_FRONT_DARK_END, 0x00},
		{TP6800_R39_REAR_DARK_ST_L, 0x00},
		{TP6800_R3A_REAR_DARK_ST_H, 0x00},
		{TP6800_R3B_REAR_DARK_END_L, 0x00},
		{TP6800_R3C_REAR_DARK_END_H, 0x00},
		{TP6800_R3D_HORIZ_DARK_LINE_L, 0x00},
		{TP6800_R3E_HORIZ_DARK_LINE_H, 0x00},
		{TP6800_R21_ENDP_1_CTL, 0x03},

		{TP6800_R31_PIXEL_START, 0x0b},
		{TP6800_R32_PIXEL_END_L, 0x8a},
		{TP6800_R33_PIXEL_END_H, 0x02},
		{TP6800_R34_LINE_START, 0x0e},
		{TP6800_R35_LINE_END_L, 0xf4},
		{TP6800_R36_LINE_END_H, 0x01},
		{TP6800_R78_FORMAT, 0x00},
		{TP6800_R12_SIF_ADDR_S, 0x20},	/* cx0342 i2c addr */
	};
	static const struct cmd sensor_init[] = {
		{CX0342_OUTPUT_CTRL, 0x07},
		{CX0342_BYPASS_MODE, 0x58},
		{CX0342_GPXLTHD_L, 0x16},
		{CX0342_RBPXLTHD_L, 0x16},
		{CX0342_PLANETHD_L, 0xc0},
		{CX0342_PLANETHD_H, 0x03},
		{CX0342_RB_GAP_L, 0xff},
		{CX0342_RB_GAP_H, 0x07},
		{CX0342_G_GAP_L, 0xff},
		{CX0342_G_GAP_H, 0x07},
		{CX0342_RST_OVERFLOW_L, 0x5c},
		{CX0342_RST_OVERFLOW_H, 0x01},
		{CX0342_DATA_OVERFLOW_L, 0xfc},
		{CX0342_DATA_OVERFLOW_H, 0x03},
		{CX0342_DATA_UNDERFLOW_L, 0x00},
		{CX0342_DATA_UNDERFLOW_H, 0x00},
		{CX0342_SYS_CTRL_0, 0x40},
		{CX0342_GLOBAL_GAIN, 0x01},
		{CX0342_CLOCK_GEN, 0x00},
		{CX0342_SYS_CTRL_0, 0x02},
		{CX0342_IDLE_CTRL, 0x05},
		{CX0342_ADCGN, 0x00},
		{CX0342_ADC_CTL, 0x00},
		{CX0342_LVRST_BLBIAS, 0x01},
		{CX0342_VTHSEL, 0x0b},
		{CX0342_RAMP_RIV, 0x0b},
		{CX0342_LDOSEL, 0x07},
		{CX0342_SPV_VALUE_L, 0x40},
		{CX0342_SPV_VALUE_H, 0x02},
	};

	FUNC4(gspca_dev, reg_init, FUNC0(reg_init));
	FUNC2(gspca_dev, sensor_init, FUNC0(sensor_init));
	FUNC2(gspca_dev, cx0342_timing_seq, FUNC0(cx0342_timing_seq));
	FUNC3(gspca_dev, TP6800_R5C_EDGE_THRLD, 0x10);
	FUNC3(gspca_dev, TP6800_R54_DARK_CFG, 0x00);
	FUNC1(gspca_dev, CX0342_EXPO_LINE_H, 0x00);
	FUNC1(gspca_dev, CX0342_SYS_CTRL_0, 0x01);
	if (sd->sensor == SENSOR_CX0342)
		FUNC7(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain),
			FUNC8(sd->blue),
			FUNC8(sd->red));
	else
		FUNC7(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain), 0, 0);
	FUNC5(gspca_dev, 1);
	FUNC6(gspca_dev);
}