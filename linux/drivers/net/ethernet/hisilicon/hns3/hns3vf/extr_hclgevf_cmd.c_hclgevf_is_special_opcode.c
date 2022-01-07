
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ARRAY_SIZE (int const*) ;

__attribute__((used)) static bool hclgevf_is_special_opcode(u16 opcode)
{
 static const u16 spec_opcode[] = {0x30, 0x31, 0x32};
 int i;

 for (i = 0; i < ARRAY_SIZE(spec_opcode); i++) {
  if (spec_opcode[i] == opcode)
   return 1;
 }

 return 0;
}
