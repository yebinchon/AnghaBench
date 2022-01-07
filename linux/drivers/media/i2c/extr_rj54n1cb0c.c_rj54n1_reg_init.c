
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rj54n1 {int auto_wb; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DSP_RSTX ;
 int E_EXCLK ;
 int RESIZE_HOLD_SEL ;
 int RJ54N1_EXPOSURE_CONTROL ;
 int RJ54N1_FWFLG ;
 int RJ54N1_MIRROR_STILL_MODE ;
 int RJ54N1_RESET_STANDBY ;
 int RJ54N1_RESIZE_CONTROL ;
 int RJ54N1_SCALE_1_2_LEV ;
 int RJ54N1_SCALE_4_LEV ;
 int RJ54N1_WB_SEL_WEIGHT_I ;
 int RJ54N1_Y_GAIN ;
 int SEN_RSTX ;
 int TG_RSTX ;
 int bank_10 ;
 int bank_4 ;
 int bank_5 ;
 int bank_7 ;
 int bank_8 ;
 int msleep (int) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int reg_write_multiple (struct i2c_client*,int ,int ) ;
 int rj54n1_commit (struct i2c_client*) ;
 int rj54n1_set_clock (struct i2c_client*) ;
 struct rj54n1* to_rj54n1 (struct i2c_client*) ;

__attribute__((used)) static int rj54n1_reg_init(struct i2c_client *client)
{
 struct rj54n1 *rj54n1 = to_rj54n1(client);
 int ret = rj54n1_set_clock(client);

 if (!ret)
  ret = reg_write_multiple(client, bank_7, ARRAY_SIZE(bank_7));
 if (!ret)
  ret = reg_write_multiple(client, bank_10, ARRAY_SIZE(bank_10));


 if (!ret)
  ret = reg_write(client, RJ54N1_SCALE_1_2_LEV, 3 | (7 << 4));
 if (!ret)
  ret = reg_write(client, RJ54N1_SCALE_4_LEV, 0xf);


 if (!ret)
  ret = reg_write(client, RJ54N1_RESIZE_CONTROL,
    RESIZE_HOLD_SEL | 1);


 if (!ret)
  ret = reg_write(client, RJ54N1_Y_GAIN, 0x84);





 if (!ret)
  ret = reg_write(client, RJ54N1_MIRROR_STILL_MODE, 0x27);

 if (!ret)
  ret = reg_write_multiple(client, bank_4, ARRAY_SIZE(bank_4));


 if (!ret)
  ret = reg_write(client, RJ54N1_EXPOSURE_CONTROL, 0x80);

 if (!ret)
  ret = reg_read(client, RJ54N1_WB_SEL_WEIGHT_I);
 if (ret >= 0) {
  rj54n1->auto_wb = ret & 0x80;
  ret = reg_write_multiple(client, bank_5, ARRAY_SIZE(bank_5));
 }
 if (!ret)
  ret = reg_write_multiple(client, bank_8, ARRAY_SIZE(bank_8));

 if (!ret)
  ret = reg_write(client, RJ54N1_RESET_STANDBY,
    E_EXCLK | DSP_RSTX | SEN_RSTX);


 if (!ret)
  ret = rj54n1_commit(client);


 if (!ret)
  ret = reg_write(client, RJ54N1_RESET_STANDBY,
    E_EXCLK | DSP_RSTX | TG_RSTX | SEN_RSTX);


 if (!ret)
  ret = reg_write(client, RJ54N1_FWFLG, 2);


 msleep(700);

 return ret;
}
