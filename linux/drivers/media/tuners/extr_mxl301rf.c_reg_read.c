
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
typedef int u8 ;
struct mxl301rf_state {int i2c; } ;


 int EIO ;
 int i2c_master_recv (int ,int*,int) ;
 int raw_write (struct mxl301rf_state*,int*,int) ;

__attribute__((used)) static int reg_read(struct mxl301rf_state *state, u8 reg, u8 *val)
{
 u8 wbuf[2] = { 0xfb, reg };
 int ret;

 ret = raw_write(state, wbuf, sizeof(wbuf));
 if (ret == 0)
  ret = i2c_master_recv(state->i2c, val, 1);
 if (ret >= 0 && ret < 1)
  ret = -EIO;
 return (ret == 1) ? 0 : ret;
}
