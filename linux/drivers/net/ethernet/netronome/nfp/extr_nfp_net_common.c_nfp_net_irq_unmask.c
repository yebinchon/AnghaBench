
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;


 int NFP_NET_CFG_ICR (unsigned int) ;
 int NFP_NET_CFG_ICR_UNMASKED ;
 int nn_pci_flush (struct nfp_net*) ;
 int nn_writeb (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void nfp_net_irq_unmask(struct nfp_net *nn, unsigned int entry_nr)
{
 nn_writeb(nn, NFP_NET_CFG_ICR(entry_nr), NFP_NET_CFG_ICR_UNMASKED);
 nn_pci_flush(nn);
}
