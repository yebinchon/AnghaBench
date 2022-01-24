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
struct mxl111sf_state {int dummy; } ;
typedef  enum mxl111sf_mux_config { ____Placeholder_mxl111sf_mux_config } mxl111sf_mux_config ;

/* Variables and functions */
 int PIN_MUX_BT656_ENABLE_MASK ; 
#define  PIN_MUX_BT656_I2S_MODE 137 
#define  PIN_MUX_DEFAULT 136 
#define  PIN_MUX_GPIO_MODE 135 
 int PIN_MUX_I2S_ENABLE_MASK ; 
 int PIN_MUX_MCLK_EN_CTRL_MASK ; 
 int PIN_MUX_MDVAL_EN_CTRL_MASK ; 
 int PIN_MUX_MPEG_MODE_MASK ; 
 int PIN_MUX_MPEG_PAR_EN_MASK ; 
 int PIN_MUX_MPEG_SER_EN_MASK ; 
 int PIN_MUX_MPERR_EN_CTRL_MASK ; 
 int PIN_MUX_MPG_IN_MUX_MASK ; 
 int PIN_MUX_MPSYN_EN_CTRL_MASK ; 
 int PIN_MUX_SPI_MODE_MASK ; 
#define  PIN_MUX_TS_OUT_PARALLEL 134 
#define  PIN_MUX_TS_OUT_SERIAL 133 
#define  PIN_MUX_TS_PARALLEL_IN 132 
#define  PIN_MUX_TS_SERIAL_IN_MODE_0 131 
#define  PIN_MUX_TS_SERIAL_IN_MODE_1 130 
#define  PIN_MUX_TS_SPI_IN_MODE_0 129 
#define  PIN_MUX_TS_SPI_IN_MODE_1 128 
 int FUNC0 (struct mxl111sf_state*,int,int*) ; 
 int FUNC1 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct mxl111sf_state *state,
				  enum mxl111sf_mux_config pin_mux_config)
{
	u8 r12, r15, r17, r18, r3D, r82, r84, r89;
	int ret;

	FUNC2("(%d)", pin_mux_config);

	ret = FUNC0(state, 0x17, &r17);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x18, &r18);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x12, &r12);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x15, &r15);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x82, &r82);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x84, &r84);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x89, &r89);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC0(state, 0x3D, &r3D);
	if (FUNC3(ret))
		goto fail;

	switch (pin_mux_config) {
	case PIN_MUX_TS_OUT_PARALLEL:
		/* mpeg_mode = 1 */
		r17 |= PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 1 */
		r18 |= PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 0 */
		r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 1 */
		r82 |= PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 1 */
		r82 |= PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 1 */
		r82 |= PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 1 */
		r82 |= PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0xF */
		r84 |= 0xF0;
		/* mdat_en_ctrl[7:4] = 0xF */
		r89 |= 0xF0;
		break;
	case PIN_MUX_TS_OUT_SERIAL:
		/* mpeg_mode = 1 */
		r17 |= PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 1 */
		r18 |= PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 1 */
		r82 |= PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 1 */
		r82 |= PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 1 */
		r82 |= PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 1 */
		r82 |= PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0xF */
		r84 |= 0xF0;
		/* mdat_en_ctrl[7:4] = 0xF */
		r89 |= 0xF0;
		break;
	case PIN_MUX_GPIO_MODE:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 0 */
		r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_TS_SERIAL_IN_MODE_0:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 1 */
		r18 |= PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_TS_SERIAL_IN_MODE_1:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 1 */
		r18 |= PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 1 */
		r3D |= PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_TS_SPI_IN_MODE_1:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 1 */
		r18 |= PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 1 */
		r3D |= PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 1 */
		r15 |= PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 1 */
		r3D |= PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_TS_SPI_IN_MODE_0:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 1 */
		r18 |= PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 1 */
		r15 |= PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 1 */
		r3D |= PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_TS_PARALLEL_IN:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 1 */
		r18 |= PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 0 */
		r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_BT656_I2S_MODE:
		/* mpeg_mode = 0 */
		r17 &= ~PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 0 */
		r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 1 */
		r12 |= PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 1 */
		r15 |= PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	case PIN_MUX_DEFAULT:
	default:
		/* mpeg_mode = 1 */
		r17 |= PIN_MUX_MPEG_MODE_MASK;
		/* mpeg_par_en = 0 */
		r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;
		/* mpeg_ser_en = 0 */
		r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;
		/* mpg_in_mux = 0 */
		r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;
		/* bt656_enable = 0 */
		r12 &= ~PIN_MUX_BT656_ENABLE_MASK;
		/* i2s_enable = 0 */
		r15 &= ~PIN_MUX_I2S_ENABLE_MASK;
		/* spi_mode = 0 */
		r3D &= ~PIN_MUX_SPI_MODE_MASK;
		/* mclk_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;
		/* mperr_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;
		/* mdval_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;
		/* mpsyn_en_ctrl = 0 */
		r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;
		/* mdat_en_ctrl[3:0] = 0x0 */
		r84 &= 0x0F;
		/* mdat_en_ctrl[7:4] = 0x0 */
		r89 &= 0x0F;
		break;
	}

	ret = FUNC1(state, 0x17, r17);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x18, r18);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x12, r12);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x15, r15);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x82, r82);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x84, r84);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x89, r89);
	if (FUNC3(ret))
		goto fail;
	ret = FUNC1(state, 0x3D, r3D);
	if (FUNC3(ret))
		goto fail;
fail:
	return ret;
}