
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ingenic_ecc_params {int dummy; } ;
struct ingenic_ecc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* calculate ) (struct ingenic_ecc*,struct ingenic_ecc_params*,int const*,int *) ;} ;


 int stub1 (struct ingenic_ecc*,struct ingenic_ecc_params*,int const*,int *) ;

int ingenic_ecc_calculate(struct ingenic_ecc *ecc,
     struct ingenic_ecc_params *params,
     const u8 *buf, u8 *ecc_code)
{
 return ecc->ops->calculate(ecc, params, buf, ecc_code);
}
