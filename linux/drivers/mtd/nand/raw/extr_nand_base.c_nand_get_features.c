
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* get_features ) (struct nand_chip*,int,int *) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int ENOTSUPP ;
 int nand_get_features_op (struct nand_chip*,int,int *) ;
 int nand_supports_get_features (struct nand_chip*,int) ;
 int stub1 (struct nand_chip*,int,int *) ;

int nand_get_features(struct nand_chip *chip, int addr,
        u8 *subfeature_param)
{
 if (!nand_supports_get_features(chip, addr))
  return -ENOTSUPP;

 if (chip->legacy.get_features)
  return chip->legacy.get_features(chip, addr, subfeature_param);

 return nand_get_features_op(chip, addr, subfeature_param);
}
