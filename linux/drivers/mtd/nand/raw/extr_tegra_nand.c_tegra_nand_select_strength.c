
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int algo; } ;
struct nand_chip {int options; TYPE_1__ ecc; } ;


 int ARRAY_SIZE (int*) ;
 int BITS_PER_STEP_BCH ;
 int BITS_PER_STEP_RS ;
 int EINVAL ;


 int NAND_IS_BOOT_MEDIUM ;
 int* bch_strength ;
 int* bch_strength_bootable ;
 int* rs_strength ;
 int* rs_strength_bootable ;
 int tegra_nand_get_strength (struct nand_chip*,int const*,int,int,int) ;

__attribute__((used)) static int tegra_nand_select_strength(struct nand_chip *chip, int oobsize)
{
 const int *strength;
 int strength_len, bits_per_step;

 switch (chip->ecc.algo) {
 case 128:
  bits_per_step = BITS_PER_STEP_RS;
  if (chip->options & NAND_IS_BOOT_MEDIUM) {
   strength = rs_strength_bootable;
   strength_len = ARRAY_SIZE(rs_strength_bootable);
  } else {
   strength = rs_strength;
   strength_len = ARRAY_SIZE(rs_strength);
  }
  break;
 case 129:
  bits_per_step = BITS_PER_STEP_BCH;
  if (chip->options & NAND_IS_BOOT_MEDIUM) {
   strength = bch_strength_bootable;
   strength_len = ARRAY_SIZE(bch_strength_bootable);
  } else {
   strength = bch_strength;
   strength_len = ARRAY_SIZE(bch_strength);
  }
  break;
 default:
  return -EINVAL;
 }

 return tegra_nand_get_strength(chip, strength, strength_len,
           bits_per_step, oobsize);
}
