
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;
typedef enum stmpe_block { ____Placeholder_stmpe_block } stmpe_block ;






__attribute__((used)) static int stmpe1601_get_altfunc(struct stmpe *stmpe, enum stmpe_block block)
{
 switch (block) {
 case 128:
  return 2;

 case 129:
  return 1;

 case 130:
 default:
  return 0;
 }
}
