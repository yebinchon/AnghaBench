
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int step_size; int strength; } ;
struct TYPE_6__ {TYPE_2__ eccreq; } ;
struct TYPE_4__ {int* data; } ;
struct nand_chip {TYPE_3__ base; TYPE_1__ id; } ;


 int WARN (int,char*) ;

__attribute__((used)) static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
      bool valid_jedecid)
{
 u8 ecc_level = (chip->id.data[4] >> 4) & 0x7;

 if (valid_jedecid) {

  chip->base.eccreq.step_size = 1024;

  switch (ecc_level) {
  case 0:
   chip->base.eccreq.step_size = 0;
   chip->base.eccreq.strength = 0;
   break;
  case 1:
   chip->base.eccreq.strength = 4;
   break;
  case 2:
   chip->base.eccreq.strength = 24;
   break;
  case 3:
   chip->base.eccreq.strength = 32;
   break;
  case 4:
   chip->base.eccreq.strength = 40;
   break;
  case 5:
   chip->base.eccreq.strength = 50;
   break;
  case 6:
   chip->base.eccreq.strength = 60;
   break;
  default:






   WARN(1, "Invalid ECC requirements");
  }
 } else {




  u8 nand_tech = chip->id.data[5] & 0x7;

  if (nand_tech < 3) {

   if (ecc_level < 5) {
    chip->base.eccreq.step_size = 512;
    chip->base.eccreq.strength = 1 << ecc_level;
   } else if (ecc_level < 7) {
    if (ecc_level == 5)
     chip->base.eccreq.step_size = 2048;
    else
     chip->base.eccreq.step_size = 1024;
    chip->base.eccreq.strength = 24;
   } else {






    WARN(1, "Invalid ECC requirements");
   }
  } else {

   if (!ecc_level) {
    chip->base.eccreq.step_size = 0;
    chip->base.eccreq.strength = 0;
   } else if (ecc_level < 5) {
    chip->base.eccreq.step_size = 512;
    chip->base.eccreq.strength = 1 << (ecc_level - 1);
   } else {
    chip->base.eccreq.step_size = 1024;
    chip->base.eccreq.strength = 24 +
       (8 * (ecc_level - 5));
   }
  }
 }
}
