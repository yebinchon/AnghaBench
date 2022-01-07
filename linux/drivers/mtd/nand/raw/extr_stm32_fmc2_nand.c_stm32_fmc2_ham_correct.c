
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;


 int EBADMSG ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int stm32_fmc2_ham_correct(struct nand_chip *chip, u8 *dat,
      u8 *read_ecc, u8 *calc_ecc)
{
 u8 bit_position = 0, b0, b1, b2;
 u32 byte_addr = 0, b;
 u32 i, shifting = 1;


 b0 = read_ecc[0] ^ calc_ecc[0];
 b1 = read_ecc[1] ^ calc_ecc[1];
 b2 = read_ecc[2] ^ calc_ecc[2];
 b = b0 | (b1 << 8) | (b2 << 16);


 if (likely(!b))
  return 0;


 for (i = 0; i < 3; i++) {
  switch (b % 4) {
  case 2:
   bit_position += shifting;
  case 1:
   break;
  default:
   return -EBADMSG;
  }
  shifting <<= 1;
  b >>= 2;
 }


 shifting = 1;
 for (i = 0; i < 9; i++) {
  switch (b % 4) {
  case 2:
   byte_addr += shifting;
  case 1:
   break;
  default:
   return -EBADMSG;
  }
  shifting <<= 1;
  b >>= 2;
 }


 dat[byte_addr] ^= (1 << bit_position);

 return 1;
}
