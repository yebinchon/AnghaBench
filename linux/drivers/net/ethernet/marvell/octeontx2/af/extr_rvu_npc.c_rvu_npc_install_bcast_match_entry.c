
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu_pfvf {int bcast_mce_idx; } ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int dummy; } ;
struct nix_rx_action {int pf_func; int op; int index; } ;
struct TYPE_4__ {int member_0; } ;
struct mcam_entry {int* kw; int* kw_mask; int action; TYPE_2__ member_0; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 int BIT_ULL (int) ;
 int BLKTYPE_NPC ;
 int NIXLF_BCAST_ENTRY ;
 int NIX_INTF_RX ;
 int NIX_RX_ACTIONOP_MCAST ;
 int NIX_RX_ACTIONOP_UCAST ;
 int RVU_PFVF_FUNC_MASK ;
 int npc_config_mcam_entry (struct rvu*,struct npc_mcam*,int,int,int ,struct mcam_entry*,int) ;
 int npc_get_nixlf_mcam_index (struct npc_mcam*,int,int,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int) ;

void rvu_npc_install_bcast_match_entry(struct rvu *rvu, u16 pcifunc,
           int nixlf, u64 chan)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 struct mcam_entry entry = { {0} };
 struct nix_rx_action action;



 int blkaddr, index;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return;


 if (pcifunc & RVU_PFVF_FUNC_MASK)
  return;




 index = npc_get_nixlf_mcam_index(mcam, pcifunc,
      nixlf, NIXLF_BCAST_ENTRY);
 entry.kw[0] = BIT_ULL(13) | chan;
 entry.kw_mask[0] = BIT_ULL(13) | 0xFFFULL;

 *(u64 *)&action = 0x00;
 action.op = NIX_RX_ACTIONOP_UCAST;
 action.pf_func = pcifunc;


 entry.action = *(u64 *)&action;
 npc_config_mcam_entry(rvu, mcam, blkaddr, index,
         NIX_INTF_RX, &entry, 1);
}
