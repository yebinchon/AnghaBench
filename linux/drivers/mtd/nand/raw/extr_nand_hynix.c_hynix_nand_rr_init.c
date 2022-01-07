
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {TYPE_1__ id; } ;


 int ARRAY_SIZE (int ) ;
 int hynix_mlc_1xnm_rr_init (struct nand_chip*,int ) ;
 int hynix_mlc_1xnm_rr_otps ;
 int hynix_nand_has_valid_jedecid (struct nand_chip*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int hynix_nand_rr_init(struct nand_chip *chip)
{
 int i, ret = 0;
 bool valid_jedecid;

 valid_jedecid = hynix_nand_has_valid_jedecid(chip);





 if (valid_jedecid) {
  u8 nand_tech = chip->id.data[5] >> 4;


  if (nand_tech == 4) {
   for (i = 0; i < ARRAY_SIZE(hynix_mlc_1xnm_rr_otps);
        i++) {




    ret = hynix_mlc_1xnm_rr_init(chip,
      hynix_mlc_1xnm_rr_otps);
    if (!ret)
     break;
   }
  }
 }

 if (ret)
  pr_warn("failed to initialize read-retry infrastructure");

 return 0;
}
