
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; } ;


 int NPC_AF_MCAMEX_BANKX_ACTION (int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 int rvu_read64 (struct rvu*,int,int ) ;

__attribute__((used)) static u64 npc_get_mcam_action(struct rvu *rvu, struct npc_mcam *mcam,
          int blkaddr, int index)
{
 int bank = npc_get_bank(mcam, index);

 index &= (mcam->banksize - 1);
 return rvu_read64(rvu, blkaddr,
     NPC_AF_MCAMEX_BANKX_ACTION(index, bank));
}
