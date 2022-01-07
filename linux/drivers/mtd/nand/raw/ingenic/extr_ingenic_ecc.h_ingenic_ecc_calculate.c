
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_ecc_params {int dummy; } ;
struct ingenic_ecc {int dummy; } ;


 int ENODEV ;

int ingenic_ecc_calculate(struct ingenic_ecc *ecc,
     struct ingenic_ecc_params *params,
     const u8 *buf, u8 *ecc_code)
{
 return -ENODEV;
}
