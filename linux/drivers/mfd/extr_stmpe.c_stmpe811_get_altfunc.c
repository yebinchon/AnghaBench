
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;
typedef enum stmpe_block { ____Placeholder_stmpe_block } stmpe_block ;


 int STMPE_BLOCK_TOUCHSCREEN ;

__attribute__((used)) static int stmpe811_get_altfunc(struct stmpe *stmpe, enum stmpe_block block)
{

 return block != STMPE_BLOCK_TOUCHSCREEN;
}
