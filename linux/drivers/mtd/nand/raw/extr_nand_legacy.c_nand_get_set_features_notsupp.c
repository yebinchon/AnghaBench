
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int ENOTSUPP ;

int nand_get_set_features_notsupp(struct nand_chip *chip, int addr,
      u8 *subfeature_param)
{
 return -ENOTSUPP;
}
