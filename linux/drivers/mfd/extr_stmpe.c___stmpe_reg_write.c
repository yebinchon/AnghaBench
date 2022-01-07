
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmpe {int dev; TYPE_1__* ci; } ;
struct TYPE_2__ {int (* write_byte ) (struct stmpe*,int ,int ) ;} ;


 int dev_err (int ,char*,int ,int) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 int stub1 (struct stmpe*,int ,int ) ;

__attribute__((used)) static int __stmpe_reg_write(struct stmpe *stmpe, u8 reg, u8 val)
{
 int ret;

 dev_vdbg(stmpe->dev, "wr: reg %#x <= %#x\n", reg, val);

 ret = stmpe->ci->write_byte(stmpe, reg, val);
 if (ret < 0)
  dev_err(stmpe->dev, "failed to write reg %#x: %d\n", reg, ret);

 return ret;
}
