
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int REG_CMDRD_ADDR ;
 int REG_CMD_BUF ;
 int s5k5baf_i2c_read (struct s5k5baf*,int ) ;
 int s5k5baf_i2c_write (struct s5k5baf*,int ,int ) ;

__attribute__((used)) static u16 s5k5baf_read(struct s5k5baf *state, u16 addr)
{
 s5k5baf_i2c_write(state, REG_CMDRD_ADDR, addr);
 return s5k5baf_i2c_read(state, REG_CMD_BUF);
}
