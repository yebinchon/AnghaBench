
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int reconfig_in_progress_update; } ;


 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_UPDATE ;
 int NFP_NET_CFG_UPDATE_ERR ;
 int nn_err (struct nfp_net*,char*,int,int ,int) ;
 int nn_readl (struct nfp_net*,int ) ;

__attribute__((used)) static bool nfp_net_reconfig_check_done(struct nfp_net *nn, bool last_check)
{
 u32 reg;

 reg = nn_readl(nn, NFP_NET_CFG_UPDATE);
 if (reg == 0)
  return 1;
 if (reg & NFP_NET_CFG_UPDATE_ERR) {
  nn_err(nn, "Reconfig error (status: 0x%08x update: 0x%08x ctrl: 0x%08x)\n",
         reg, nn->reconfig_in_progress_update,
         nn_readl(nn, NFP_NET_CFG_CTRL));
  return 1;
 } else if (last_check) {
  nn_err(nn, "Reconfig timeout (status: 0x%08x update: 0x%08x ctrl: 0x%08x)\n",
         reg, nn->reconfig_in_progress_update,
         nn_readl(nn, NFP_NET_CFG_CTRL));
  return 1;
 }

 return 0;
}
