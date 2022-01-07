
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int * bna; int ioc; } ;


 int bfa_nw_ioc_detach (int *) ;

__attribute__((used)) static void
bna_ioceth_uninit(struct bna_ioceth *ioceth)
{
 bfa_nw_ioc_detach(&ioceth->ioc);

 ioceth->bna = ((void*)0);
}
