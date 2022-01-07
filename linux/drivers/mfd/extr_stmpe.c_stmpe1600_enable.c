
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;


 int EINVAL ;
 unsigned int STMPE_BLOCK_GPIO ;

__attribute__((used)) static int stmpe1600_enable(struct stmpe *stmpe, unsigned int blocks,
      bool enable)
{
 if (blocks & STMPE_BLOCK_GPIO)
  return 0;
 else
  return -EINVAL;
}
