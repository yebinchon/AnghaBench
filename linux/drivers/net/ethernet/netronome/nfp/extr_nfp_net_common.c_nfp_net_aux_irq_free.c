
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_net {TYPE_1__* irq_entries; } ;
struct TYPE_2__ {int vector; } ;


 int free_irq (int ,struct nfp_net*) ;
 int nn_pci_flush (struct nfp_net*) ;
 int nn_writeb (struct nfp_net*,int ,int) ;

__attribute__((used)) static void nfp_net_aux_irq_free(struct nfp_net *nn, u32 ctrl_offset,
     unsigned int vector_idx)
{
 nn_writeb(nn, ctrl_offset, 0xff);
 nn_pci_flush(nn);
 free_irq(nn->irq_entries[vector_idx].vector, nn);
}
