
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BLOCK_IS_RESERVED ;
 int BLOCK_UNMASK_COMPLEMENT ;
 int EINVAL ;
 int GENMASK (int,int ) ;
 size_t NAND_NOOB_LOGADDR_00 ;
 size_t NAND_NOOB_LOGADDR_01 ;
 size_t NAND_NOOB_LOGADDR_10 ;
 size_t NAND_NOOB_LOGADDR_11 ;
 size_t NAND_NOOB_LOGADDR_20 ;
 size_t NAND_NOOB_LOGADDR_21 ;
 int hweight16 (int) ;

__attribute__((used)) static int sharpsl_nand_get_logical_num(u8 *oob)
{
 u16 us;
 int good0, good1;

 if (oob[NAND_NOOB_LOGADDR_00] == oob[NAND_NOOB_LOGADDR_10] &&
     oob[NAND_NOOB_LOGADDR_01] == oob[NAND_NOOB_LOGADDR_11]) {
  good0 = NAND_NOOB_LOGADDR_00;
  good1 = NAND_NOOB_LOGADDR_01;
 } else if (oob[NAND_NOOB_LOGADDR_10] == oob[NAND_NOOB_LOGADDR_20] &&
     oob[NAND_NOOB_LOGADDR_11] == oob[NAND_NOOB_LOGADDR_21]) {
  good0 = NAND_NOOB_LOGADDR_10;
  good1 = NAND_NOOB_LOGADDR_11;
 } else if (oob[NAND_NOOB_LOGADDR_20] == oob[NAND_NOOB_LOGADDR_00] &&
     oob[NAND_NOOB_LOGADDR_21] == oob[NAND_NOOB_LOGADDR_01]) {
  good0 = NAND_NOOB_LOGADDR_20;
  good1 = NAND_NOOB_LOGADDR_21;
 } else {
  return -EINVAL;
 }

 us = oob[good0] | oob[good1] << 8;


 if (hweight16(us) & BLOCK_UNMASK_COMPLEMENT)
  return -EINVAL;


 if (us == BLOCK_IS_RESERVED)
  return BLOCK_IS_RESERVED;

 return (us >> 1) & GENMASK(9, 0);
}
