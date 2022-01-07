
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
typedef int u8 ;
struct qm1d1c0042_state {int i2c; } ;


 int EIO ;
 int i2c_master_send (int ,int *,int) ;

__attribute__((used)) static int reg_write(struct qm1d1c0042_state *state, u8 reg, u8 val)
{
 u8 wbuf[2] = { reg, val };
 int ret;

 ret = i2c_master_send(state->i2c, wbuf, sizeof(wbuf));
 if (ret >= 0 && ret < sizeof(wbuf))
  ret = -EIO;
 return (ret == sizeof(wbuf)) ? 0 : ret;
}
