
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int dummy; } ;
struct nix_rx_action {scalar_t__ op; int pf_func; } ;
struct TYPE_4__ {int member_0; } ;
struct mcam_entry {int* kw_mask; void* action; void** kw; TYPE_2__ member_0; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 void* BIT_ULL (int) ;
 int BLKTYPE_NPC ;
 int NIXLF_PROMISC_ENTRY ;
 int NIXLF_UCAST_ENTRY ;
 int NIX_INTF_RX ;
 scalar_t__ NIX_RX_ACTIONOP_RSS ;
 scalar_t__ NIX_RX_ACTIONOP_UCAST ;
 int NPC_PARSE_RESULT_DMAC_OFFSET ;
 int RVU_PFVF_FUNC_MASK ;
 int is_afvf (int) ;
 scalar_t__ is_mcam_entry_enabled (struct rvu*,struct npc_mcam*,int,int) ;
 int npc_config_mcam_entry (struct rvu*,struct npc_mcam*,int,int,int ,struct mcam_entry*,int) ;
 void* npc_get_mcam_action (struct rvu*,struct npc_mcam*,int,int) ;
 int npc_get_nixlf_mcam_index (struct npc_mcam*,int,int,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

void rvu_npc_install_promisc_entry(struct rvu *rvu, u16 pcifunc,
       int nixlf, u64 chan, bool allmulti)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 int blkaddr, ucast_idx, index, kwi;
 struct mcam_entry entry = { {0} };
 struct nix_rx_action action = { };


 if ((pcifunc & RVU_PFVF_FUNC_MASK) && !is_afvf(pcifunc))
  return;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return;

 index = npc_get_nixlf_mcam_index(mcam, pcifunc,
      nixlf, NIXLF_PROMISC_ENTRY);

 entry.kw[0] = chan;
 entry.kw_mask[0] = 0xFFFULL;

 if (allmulti) {
  kwi = NPC_PARSE_RESULT_DMAC_OFFSET / sizeof(u64);
  entry.kw[kwi] = BIT_ULL(40);
  entry.kw_mask[kwi] = BIT_ULL(40);
 }

 ucast_idx = npc_get_nixlf_mcam_index(mcam, pcifunc,
          nixlf, NIXLF_UCAST_ENTRY);




 if (is_mcam_entry_enabled(rvu, mcam, blkaddr, ucast_idx))
  *(u64 *)&action = npc_get_mcam_action(rvu, mcam,
       blkaddr, ucast_idx);

 if (action.op != NIX_RX_ACTIONOP_RSS) {
  *(u64 *)&action = 0x00;
  action.op = NIX_RX_ACTIONOP_UCAST;
  action.pf_func = pcifunc;
 }

 entry.action = *(u64 *)&action;
 npc_config_mcam_entry(rvu, mcam, blkaddr, index,
         NIX_INTF_RX, &entry, 1);
}
