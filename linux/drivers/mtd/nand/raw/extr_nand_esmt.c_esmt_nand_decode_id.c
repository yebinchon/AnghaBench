
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int step_size; int strength; } ;
struct TYPE_6__ {TYPE_2__ eccreq; } ;
struct TYPE_4__ {int len; int* data; } ;
struct nand_chip {TYPE_3__ base; TYPE_1__ id; } ;


 int WARN (int,char*) ;
 int nand_decode_ext_id (struct nand_chip*) ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;

__attribute__((used)) static void esmt_nand_decode_id(struct nand_chip *chip)
{
 nand_decode_ext_id(chip);


 if (chip->id.len >= 5 && nand_is_slc(chip)) {
  chip->base.eccreq.step_size = 512;
  switch (chip->id.data[4] & 0x3) {
  case 0x0:
   chip->base.eccreq.strength = 4;
   break;
  case 0x1:
   chip->base.eccreq.strength = 2;
   break;
  case 0x2:
   chip->base.eccreq.strength = 1;
   break;
  default:
   WARN(1, "Could not get ECC info");
   chip->base.eccreq.step_size = 0;
   break;
  }
 }
}
