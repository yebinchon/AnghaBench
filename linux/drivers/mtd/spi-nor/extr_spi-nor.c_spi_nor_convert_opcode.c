
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;



__attribute__((used)) static u8 spi_nor_convert_opcode(u8 opcode, const u8 table[][2], size_t size)
{
 size_t i;

 for (i = 0; i < size; i++)
  if (table[i][0] == opcode)
   return table[i][1];


 return opcode;
}
