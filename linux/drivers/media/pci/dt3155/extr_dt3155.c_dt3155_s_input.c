
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dt3155_priv {unsigned int input; int regs; } ;


 int AD_ADDR ;
 int AD_CMD ;
 unsigned int AD_CMD_REG ;
 int EINVAL ;
 unsigned int SYNC_LVL_3 ;
 struct dt3155_priv* video_drvdata (struct file*) ;
 int write_i2c_reg (int ,int ,unsigned int) ;

__attribute__((used)) static int dt3155_s_input(struct file *filp, void *p, unsigned int i)
{
 struct dt3155_priv *pd = video_drvdata(filp);

 if (i > 3)
  return -EINVAL;
 pd->input = i;
 write_i2c_reg(pd->regs, AD_ADDR, AD_CMD_REG);
 write_i2c_reg(pd->regs, AD_CMD, (i << 6) | (i << 4) | SYNC_LVL_3);
 return 0;
}
