
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int * ioc_hwif; } ;


 int nw_hwif_ct ;

void
bfa_nw_ioc_set_ct_hwif(struct bfa_ioc *ioc)
{
 ioc->ioc_hwif = &nw_hwif_ct;
}
