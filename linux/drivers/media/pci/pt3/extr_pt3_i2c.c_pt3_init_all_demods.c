
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_board {scalar_t__* regs; } ;


 int PT3_CMD_ADDR_INIT_DEMOD ;
 scalar_t__ REG_I2C_R ;
 int ioread32 (scalar_t__) ;
 int send_i2c_cmd (struct pt3_board*,int ) ;

int pt3_init_all_demods(struct pt3_board *pt3)
{
 ioread32(pt3->regs[0] + REG_I2C_R);
 return send_i2c_cmd(pt3, PT3_CMD_ADDR_INIT_DEMOD);
}
