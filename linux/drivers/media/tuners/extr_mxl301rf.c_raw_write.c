
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl301rf_state {int i2c; } ;


 int EIO ;
 int i2c_master_send (int ,int const*,int) ;

__attribute__((used)) static int raw_write(struct mxl301rf_state *state, const u8 *buf, int len)
{
 int ret;

 ret = i2c_master_send(state->i2c, buf, len);
 if (ret >= 0 && ret < len)
  ret = -EIO;
 return (ret == len) ? 0 : ret;
}
