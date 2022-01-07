
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int options; } ;


 int COMMAND_RAR_BYTE1 ;
 int COMMAND_RAR_BYTE2 ;
 int COMMAND_RAR_BYTE3 ;
 int NAND_ROW_ADDR_3 ;
 int ROW_ADDR (int,int) ;

__attribute__((used)) static void vf610_nfc_fill_row(struct nand_chip *chip, int page, u32 *code,
          u32 *row)
{
 *row = ROW_ADDR(0, page & 0xff) | ROW_ADDR(1, page >> 8);
 *code |= COMMAND_RAR_BYTE1 | COMMAND_RAR_BYTE2;

 if (chip->options & NAND_ROW_ADDR_3) {
  *row |= ROW_ADDR(2, page >> 16);
  *code |= COMMAND_RAR_BYTE3;
 }
}
