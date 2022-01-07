
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmpe {int dev; TYPE_1__* ci; } ;
struct TYPE_2__ {int (* read_byte ) (struct stmpe*,int ) ;} ;


 int dev_err (int ,char*,int ,int) ;
 int dev_vdbg (int ,char*,int ,int) ;
 int stub1 (struct stmpe*,int ) ;

__attribute__((used)) static int __stmpe_reg_read(struct stmpe *stmpe, u8 reg)
{
 int ret;

 ret = stmpe->ci->read_byte(stmpe, reg);
 if (ret < 0)
  dev_err(stmpe->dev, "failed to read reg %#x: %d\n", reg, ret);

 dev_vdbg(stmpe->dev, "rd: reg %#x => data %#x\n", reg, ret);

 return ret;
}
