
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int banksize; } ;
struct nix_rx_action {scalar_t__ op; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int NIXLF_BCAST_ENTRY ;
 int NIXLF_UCAST_ENTRY ;
 scalar_t__ NIX_RX_ACTIONOP_MCAST ;
 int NPC_AF_MCAMEX_BANKX_ACTION (int,int) ;
 int RVU_PFVF_FUNC_MASK ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 int npc_get_nixlf_mcam_index (struct npc_mcam*,int,int,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_npc_disable_promisc_entry (struct rvu*,int,int) ;
 int rvu_npc_enable_promisc_entry (struct rvu*,int,int) ;
 int rvu_npc_update_rxvlan (struct rvu*,int,int) ;
 int rvu_read64 (struct rvu*,int,int ) ;

__attribute__((used)) static void npc_enadis_default_entries(struct rvu *rvu, u16 pcifunc,
           int nixlf, bool enable)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 struct nix_rx_action action;
 int index, bank, blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return;


 index = npc_get_nixlf_mcam_index(mcam, pcifunc,
      nixlf, NIXLF_UCAST_ENTRY);
 npc_enable_mcam_entry(rvu, mcam, blkaddr, index, enable);


 if (pcifunc & RVU_PFVF_FUNC_MASK)
  return;






 index = npc_get_nixlf_mcam_index(mcam, pcifunc,
      nixlf, NIXLF_BCAST_ENTRY);
 bank = npc_get_bank(mcam, index);
 *(u64 *)&action = rvu_read64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_ACTION(index & (mcam->banksize - 1), bank));
 if (action.op != NIX_RX_ACTIONOP_MCAST)
  npc_enable_mcam_entry(rvu, mcam,
          blkaddr, index, enable);
 if (enable)
  rvu_npc_enable_promisc_entry(rvu, pcifunc, nixlf);
 else
  rvu_npc_disable_promisc_entry(rvu, pcifunc, nixlf);

 rvu_npc_update_rxvlan(rvu, pcifunc, nixlf);
}
