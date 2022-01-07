
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int size; int strength; int bytes; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct omap_nand_info {TYPE_2__ nand; } ;


 scalar_t__ hweight8 (int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int erased_sector_bitflips(u_char *data, u_char *oob,
  struct omap_nand_info *info)
{
 int flip_bits = 0, i;

 for (i = 0; i < info->nand.ecc.size; i++) {
  flip_bits += hweight8(~data[i]);
  if (flip_bits > info->nand.ecc.strength)
   return 0;
 }

 for (i = 0; i < info->nand.ecc.bytes - 1; i++) {
  flip_bits += hweight8(~oob[i]);
  if (flip_bits > info->nand.ecc.strength)
   return 0;
 }





 if (flip_bits) {
  memset(data, 0xFF, info->nand.ecc.size);
  memset(oob, 0xFF, info->nand.ecc.bytes);
 }

 return flip_bits;
}
