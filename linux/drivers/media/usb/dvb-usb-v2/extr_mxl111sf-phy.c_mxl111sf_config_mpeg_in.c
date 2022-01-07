
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 unsigned int MPEG_SER_MSB_FIRST_ENABLED ;
 unsigned int TSIF_INPUT_PARALLEL ;
 unsigned int TSIF_NORMAL ;
 int V6_ENABLE_PIN_MUX ;
 int V6_INVERTED_CLK_PHASE ;
 int V6_INVERTED_MPEG_SYNC ;
 int V6_INVERTED_MPEG_VALID ;
 int V6_MPEG_INOUT_BIT_ORDER_CTRL_REG ;
 int V6_MPEG_IN_CLK_INV_REG ;
 int V6_MPEG_IN_CTRL_REG ;
 int V6_MPEG_IN_DATA_PARALLEL ;
 int V6_MPEG_IN_DATA_SERIAL ;
 int V6_MPEG_SER_MSB_FIRST ;
 int V6_PIN_MUX_MODE_REG ;
 int mxl111sf_read_reg (struct mxl111sf_state*,int ,int *) ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int ,int ) ;
 int mxl_debug (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int mxl_fail (int) ;

int mxl111sf_config_mpeg_in(struct mxl111sf_state *state,
       unsigned int parallel_serial,
       unsigned int msb_lsb_1st,
       unsigned int clock_phase,
       unsigned int mpeg_valid_pol,
       unsigned int mpeg_sync_pol)
{
 int ret;
 u8 mode, tmp;

 mxl_debug("(%u,%u,%u,%u,%u)", parallel_serial, msb_lsb_1st,
    clock_phase, mpeg_valid_pol, mpeg_sync_pol);


 ret = mxl111sf_write_reg(state, V6_PIN_MUX_MODE_REG, V6_ENABLE_PIN_MUX);
 mxl_fail(ret);


 mxl111sf_read_reg(state, V6_MPEG_IN_CLK_INV_REG, &mode);

 if (clock_phase == TSIF_NORMAL)
  mode &= ~V6_INVERTED_CLK_PHASE;
 else
  mode |= V6_INVERTED_CLK_PHASE;

 ret = mxl111sf_write_reg(state, V6_MPEG_IN_CLK_INV_REG, mode);
 mxl_fail(ret);



 ret = mxl111sf_read_reg(state, V6_MPEG_IN_CTRL_REG, &mode);
 mxl_fail(ret);


 if (parallel_serial == TSIF_INPUT_PARALLEL) {

  mode &= ~V6_MPEG_IN_DATA_SERIAL;


  mode |= V6_MPEG_IN_DATA_PARALLEL;
 } else {

  mode &= ~V6_MPEG_IN_DATA_PARALLEL;


  mode |= V6_MPEG_IN_DATA_SERIAL;



  ret = mxl111sf_read_reg(state,
     V6_MPEG_INOUT_BIT_ORDER_CTRL_REG,
     &tmp);
  mxl_fail(ret);

  if (msb_lsb_1st == MPEG_SER_MSB_FIRST_ENABLED)
   tmp |= V6_MPEG_SER_MSB_FIRST;
  else
   tmp &= ~V6_MPEG_SER_MSB_FIRST;

  ret = mxl111sf_write_reg(state,
      V6_MPEG_INOUT_BIT_ORDER_CTRL_REG,
      tmp);
  mxl_fail(ret);
 }


 if (mpeg_sync_pol == TSIF_NORMAL)
  mode &= ~V6_INVERTED_MPEG_SYNC;
 else
  mode |= V6_INVERTED_MPEG_SYNC;


 if (mpeg_valid_pol == 0)
  mode &= ~V6_INVERTED_MPEG_VALID;
 else
  mode |= V6_INVERTED_MPEG_VALID;

 ret = mxl111sf_write_reg(state, V6_MPEG_IN_CTRL_REG, mode);
 mxl_fail(ret);

 return ret;
}
