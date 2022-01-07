
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmpe {int dev; TYPE_1__* ci; } ;
struct TYPE_2__ {int (* write_block ) (struct stmpe*,int ,int ,int const*) ;} ;


 int dev_err (int ,char*,int ,int) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 int stmpe_dump_bytes (char*,int const*,int ) ;
 int stub1 (struct stmpe*,int ,int ,int const*) ;

__attribute__((used)) static int __stmpe_block_write(struct stmpe *stmpe, u8 reg, u8 length,
   const u8 *values)
{
 int ret;

 dev_vdbg(stmpe->dev, "wr: regs %#x (%d)\n", reg, length);
 stmpe_dump_bytes("stmpe wr: ", values, length);

 ret = stmpe->ci->write_block(stmpe, reg, length, values);
 if (ret < 0)
  dev_err(stmpe->dev, "failed to write regs %#x: %d\n", reg, ret);

 return ret;
}
