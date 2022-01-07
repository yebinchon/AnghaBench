
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmpe {int dev; TYPE_1__* ci; } ;
struct TYPE_2__ {int (* read_block ) (struct stmpe*,int ,int ,int *) ;} ;


 int dev_err (int ,char*,int ,int) ;
 int dev_vdbg (int ,char*,int ,int ,int) ;
 int stmpe_dump_bytes (char*,int *,int ) ;
 int stub1 (struct stmpe*,int ,int ,int *) ;

__attribute__((used)) static int __stmpe_block_read(struct stmpe *stmpe, u8 reg, u8 length,
         u8 *values)
{
 int ret;

 ret = stmpe->ci->read_block(stmpe, reg, length, values);
 if (ret < 0)
  dev_err(stmpe->dev, "failed to read regs %#x: %d\n", reg, ret);

 dev_vdbg(stmpe->dev, "rd: reg %#x (%d) => ret %#x\n", reg, length, ret);
 stmpe_dump_bytes("stmpe rd: ", values, length);

 return ret;
}
