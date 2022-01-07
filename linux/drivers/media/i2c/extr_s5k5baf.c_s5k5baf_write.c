
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int REG_CMDWR_ADDR ;
 int REG_CMD_BUF ;
 int s5k5baf_i2c_write (struct s5k5baf*,int ,int ) ;

__attribute__((used)) static void s5k5baf_write(struct s5k5baf *state, u16 addr, u16 val)
{
 s5k5baf_i2c_write(state, REG_CMDWR_ADDR, addr);
 s5k5baf_i2c_write(state, REG_CMD_BUF, val);
}
