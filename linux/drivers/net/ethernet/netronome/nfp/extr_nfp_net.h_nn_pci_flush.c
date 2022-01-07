
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;


 int NFP_NET_CFG_VERSION ;
 int nn_readl (struct nfp_net*,int ) ;

__attribute__((used)) static inline void nn_pci_flush(struct nfp_net *nn)
{
 nn_readl(nn, NFP_NET_CFG_VERSION);
}
