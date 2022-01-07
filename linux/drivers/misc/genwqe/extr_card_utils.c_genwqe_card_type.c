
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct genwqe_dev {int slu_unitcfg; } ;


 int IO_SLU_UNITCFG_TYPE_MASK ;

u8 genwqe_card_type(struct genwqe_dev *cd)
{
 u64 card_type = cd->slu_unitcfg;

 return (u8)((card_type & IO_SLU_UNITCFG_TYPE_MASK) >> 20);
}
