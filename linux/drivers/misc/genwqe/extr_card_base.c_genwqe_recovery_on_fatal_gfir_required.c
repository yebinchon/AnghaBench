
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int slu_unitcfg; } ;



int genwqe_recovery_on_fatal_gfir_required(struct genwqe_dev *cd)
{
 return (cd->slu_unitcfg & 0xFFFF0ull) >= 0x32170ull;
}
