
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ecc {TYPE_1__* caps; } ;
struct TYPE_2__ {unsigned int parity_bits; } ;



unsigned int mtk_ecc_get_parity_bits(struct mtk_ecc *ecc)
{
 return ecc->caps->parity_bits;
}
