
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int dummy; } ;
struct bna_intr_info {int * idl; } ;


 int kfree (int *) ;

__attribute__((used)) static void
bnad_txrx_irq_free(struct bnad *bnad, struct bna_intr_info *intr_info)
{
 kfree(intr_info->idl);
 intr_info->idl = ((void*)0);
}
