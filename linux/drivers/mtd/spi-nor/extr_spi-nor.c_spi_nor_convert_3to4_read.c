
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_1__ u8 ;


 int ARRAY_SIZE (TYPE_1__ const**) ;
 TYPE_1__ spi_nor_convert_opcode (TYPE_1__,TYPE_1__ const**,int ) ;

__attribute__((used)) static u8 spi_nor_convert_3to4_read(u8 opcode)
{
 static const u8 spi_nor_3to4_read[][2] = {
  { 149, 130 },
  { 129, 128 },
  { 146, 145 },
  { 140, 139 },
  { 144, 143 },
  { 136, 135 },
  { 142, 141 },
  { 132, 131 },

  { 148, 147 },
  { 138, 137 },
  { 134, 133 },
 };

 return spi_nor_convert_opcode(opcode, spi_nor_3to4_read,
          ARRAY_SIZE(spi_nor_3to4_read));
}
