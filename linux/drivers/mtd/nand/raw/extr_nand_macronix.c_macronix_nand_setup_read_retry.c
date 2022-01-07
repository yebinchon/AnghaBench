
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int set_feature_list; int supports_set_get_features; } ;
struct nand_chip {TYPE_1__ parameters; } ;


 int ENOTSUPP ;
 int ONFI_FEATURE_ADDR_READ_RETRY ;
 int ONFI_SUBFEATURE_PARAM_LEN ;
 int nand_set_features (struct nand_chip*,int ,int*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int macronix_nand_setup_read_retry(struct nand_chip *chip, int mode)
{
 u8 feature[ONFI_SUBFEATURE_PARAM_LEN];

 if (!chip->parameters.supports_set_get_features ||
     !test_bit(ONFI_FEATURE_ADDR_READ_RETRY,
        chip->parameters.set_feature_list))
  return -ENOTSUPP;

 feature[0] = mode;
 return nand_set_features(chip, ONFI_FEATURE_ADDR_READ_RETRY, feature);
}
