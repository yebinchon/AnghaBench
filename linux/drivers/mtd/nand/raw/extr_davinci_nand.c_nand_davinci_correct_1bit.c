
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;


 int BIT (int) ;
 int EBADMSG ;

__attribute__((used)) static int nand_davinci_correct_1bit(struct nand_chip *chip, u_char *dat,
         u_char *read_ecc, u_char *calc_ecc)
{
 uint32_t eccNand = read_ecc[0] | (read_ecc[1] << 8) |
       (read_ecc[2] << 16);
 uint32_t eccCalc = calc_ecc[0] | (calc_ecc[1] << 8) |
       (calc_ecc[2] << 16);
 uint32_t diff = eccCalc ^ eccNand;

 if (diff) {
  if ((((diff >> 12) ^ diff) & 0xfff) == 0xfff) {

   if ((diff >> (12 + 3)) < chip->ecc.size) {
    dat[diff >> (12 + 3)] ^= BIT((diff >> 12) & 7);
    return 1;
   } else {
    return -EBADMSG;
   }
  } else if (!(diff & (diff - 1))) {


   return 1;
  } else {

   return -EBADMSG;
  }

 }
 return 0;
}
