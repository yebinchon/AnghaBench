
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int reconfig_in_progress_update; int qcp_cfg; } ;


 int NFP_NET_CFG_UPDATE ;
 int nfp_qcp_wr_ptr_add (int ,int) ;
 int nn_pci_flush (struct nfp_net*) ;
 int nn_writel (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void nfp_net_reconfig_start(struct nfp_net *nn, u32 update)
{
 nn_writel(nn, NFP_NET_CFG_UPDATE, update);

 nn_pci_flush(nn);
 nfp_qcp_wr_ptr_add(nn->qcp_cfg, 1);
 nn->reconfig_in_progress_update = update;
}
