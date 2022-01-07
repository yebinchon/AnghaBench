
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_1__ u8 ;


 int ARRAY_SIZE (TYPE_1__ const**) ;






 TYPE_1__ spi_nor_convert_opcode (TYPE_1__,TYPE_1__ const**,int ) ;

__attribute__((used)) static u8 spi_nor_convert_3to4_erase(u8 opcode)
{
 static const u8 spi_nor_3to4_erase[][2] = {
  { 131, 130 },
  { 133, 132 },
  { 129, 128 },
 };

 return spi_nor_convert_opcode(opcode, spi_nor_3to4_erase,
          ARRAY_SIZE(spi_nor_3to4_erase));
}
