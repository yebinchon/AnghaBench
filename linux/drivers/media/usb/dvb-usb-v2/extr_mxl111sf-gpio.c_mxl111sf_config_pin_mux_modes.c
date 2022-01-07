
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;
typedef enum mxl111sf_mux_config { ____Placeholder_mxl111sf_mux_config } mxl111sf_mux_config ;


 int PIN_MUX_BT656_ENABLE_MASK ;



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







 int mxl111sf_read_reg (struct mxl111sf_state*,int,int*) ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*,int) ;
 scalar_t__ mxl_fail (int) ;

int mxl111sf_config_pin_mux_modes(struct mxl111sf_state *state,
      enum mxl111sf_mux_config pin_mux_config)
{
 u8 r12, r15, r17, r18, r3D, r82, r84, r89;
 int ret;

 mxl_debug("(%d)", pin_mux_config);

 ret = mxl111sf_read_reg(state, 0x17, &r17);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x18, &r18);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x12, &r12);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x15, &r15);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x82, &r82);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x84, &r84);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x89, &r89);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_read_reg(state, 0x3D, &r3D);
 if (mxl_fail(ret))
  goto fail;

 switch (pin_mux_config) {
 case 134:

  r17 |= PIN_MUX_MPEG_MODE_MASK;

  r18 |= PIN_MUX_MPEG_PAR_EN_MASK;

  r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 |= PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 |= PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 |= PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 |= PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 |= 0xF0;

  r89 |= 0xF0;
  break;
 case 133:

  r17 |= PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 |= PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 |= PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 |= PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 |= PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 |= PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 |= 0xF0;

  r89 |= 0xF0;
  break;
 case 135:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 131:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 |= PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 130:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 |= PIN_MUX_MPEG_SER_EN_MASK;

  r3D |= PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 128:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 |= PIN_MUX_MPEG_SER_EN_MASK;

  r3D |= PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 |= PIN_MUX_I2S_ENABLE_MASK;

  r3D |= PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 129:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 |= PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 |= PIN_MUX_I2S_ENABLE_MASK;

  r3D |= PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 132:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 |= PIN_MUX_MPEG_PAR_EN_MASK;

  r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 137:

  r17 &= ~PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 |= PIN_MUX_BT656_ENABLE_MASK;

  r15 |= PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 case 136:
 default:

  r17 |= PIN_MUX_MPEG_MODE_MASK;

  r18 &= ~PIN_MUX_MPEG_PAR_EN_MASK;

  r18 &= ~PIN_MUX_MPEG_SER_EN_MASK;

  r3D &= ~PIN_MUX_MPG_IN_MUX_MASK;

  r12 &= ~PIN_MUX_BT656_ENABLE_MASK;

  r15 &= ~PIN_MUX_I2S_ENABLE_MASK;

  r3D &= ~PIN_MUX_SPI_MODE_MASK;

  r82 &= ~PIN_MUX_MCLK_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPERR_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MDVAL_EN_CTRL_MASK;

  r82 &= ~PIN_MUX_MPSYN_EN_CTRL_MASK;

  r84 &= 0x0F;

  r89 &= 0x0F;
  break;
 }

 ret = mxl111sf_write_reg(state, 0x17, r17);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x18, r18);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x12, r12);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x15, r15);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x82, r82);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x84, r84);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x89, r89);
 if (mxl_fail(ret))
  goto fail;
 ret = mxl111sf_write_reg(state, 0x3D, r3D);
 if (mxl_fail(ret))
  goto fail;
fail:
 return ret;
}
