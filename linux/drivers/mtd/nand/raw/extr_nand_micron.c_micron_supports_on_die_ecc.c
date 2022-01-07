
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int strength; } ;
struct TYPE_8__ {TYPE_3__ eccreq; } ;
struct TYPE_6__ {int len; int* data; } ;
struct TYPE_5__ {int onfi; } ;
struct nand_chip {TYPE_4__ base; TYPE_2__ id; TYPE_1__ parameters; } ;
typedef int id ;


 int MICRON_ID_ECC_ENABLED ;
 int MICRON_ID_INTERNAL_ECC_MASK ;
 int MICRON_ON_DIE_MANDATORY ;
 int MICRON_ON_DIE_SUPPORTED ;
 int MICRON_ON_DIE_UNSUPPORTED ;
 int micron_nand_on_die_ecc_setup (struct nand_chip*,int) ;
 int nand_readid_op (struct nand_chip*,int ,int*,int) ;
 int nanddev_bits_per_cell (TYPE_4__*) ;

__attribute__((used)) static int micron_supports_on_die_ecc(struct nand_chip *chip)
{
 u8 id[5];
 int ret;

 if (!chip->parameters.onfi)
  return MICRON_ON_DIE_UNSUPPORTED;

 if (nanddev_bits_per_cell(&chip->base) != 1)
  return MICRON_ON_DIE_UNSUPPORTED;




 if (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
  return MICRON_ON_DIE_UNSUPPORTED;


 if (chip->id.len != 5 ||
     (chip->id.data[4] & MICRON_ID_INTERNAL_ECC_MASK) != 0x2)
  return MICRON_ON_DIE_UNSUPPORTED;
 ret = micron_nand_on_die_ecc_setup(chip, 1);
 if (ret)
  return MICRON_ON_DIE_UNSUPPORTED;

 ret = nand_readid_op(chip, 0, id, sizeof(id));
 if (ret)
  return MICRON_ON_DIE_UNSUPPORTED;

 ret = micron_nand_on_die_ecc_setup(chip, 0);
 if (ret)
  return MICRON_ON_DIE_UNSUPPORTED;

 if (!(id[4] & MICRON_ID_ECC_ENABLED))
  return MICRON_ON_DIE_UNSUPPORTED;

 ret = nand_readid_op(chip, 0, id, sizeof(id));
 if (ret)
  return MICRON_ON_DIE_UNSUPPORTED;

 if (id[4] & MICRON_ID_ECC_ENABLED)
  return MICRON_ON_DIE_MANDATORY;




 if (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
  return MICRON_ON_DIE_UNSUPPORTED;

 return MICRON_ON_DIE_SUPPORTED;
}
