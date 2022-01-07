
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ FIELD_GET (int ,int ) ;
 scalar_t__ IMMED_WIDTH_ALL ;
 int OP_IMMED_INV ;
 int OP_IMMED_SHIFT ;
 int OP_IMMED_WIDTH ;
 int pr_err (char*) ;

__attribute__((used)) static bool immed_can_modify(u64 instr)
{
 if (FIELD_GET(OP_IMMED_INV, instr) ||
     FIELD_GET(OP_IMMED_SHIFT, instr) ||
     FIELD_GET(OP_IMMED_WIDTH, instr) != IMMED_WIDTH_ALL) {
  pr_err("Can't decode/encode immed!\n");
  return 0;
 }
 return 1;
}
