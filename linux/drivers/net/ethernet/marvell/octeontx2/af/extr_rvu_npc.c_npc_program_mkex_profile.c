
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct npc_mcam_kex {int *** intf_ld_flags; int **** intf_lid_lt_ld; int * kex_ld_flags; int * keyx_cfg; } ;


 size_t NIX_INTF_RX ;
 size_t NIX_INTF_TX ;
 int NPC_AF_INTFX_KEX_CFG (size_t) ;
 int NPC_AF_KEX_LDATAX_FLAGS_CFG (int) ;
 int NPC_MAX_LD ;
 int NPC_MAX_LFL ;
 int NPC_MAX_LID ;
 int NPC_MAX_LT ;
 int SET_KEX_LD (size_t,int,int,int,int ) ;
 int SET_KEX_LDFLAGS (size_t,int,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void npc_program_mkex_profile(struct rvu *rvu, int blkaddr,
         struct npc_mcam_kex *mkex)
{
 int lid, lt, ld, fl;

 rvu_write64(rvu, blkaddr, NPC_AF_INTFX_KEX_CFG(NIX_INTF_RX),
      mkex->keyx_cfg[NIX_INTF_RX]);
 rvu_write64(rvu, blkaddr, NPC_AF_INTFX_KEX_CFG(NIX_INTF_TX),
      mkex->keyx_cfg[NIX_INTF_TX]);

 for (ld = 0; ld < NPC_MAX_LD; ld++)
  rvu_write64(rvu, blkaddr, NPC_AF_KEX_LDATAX_FLAGS_CFG(ld),
       mkex->kex_ld_flags[ld]);

 for (lid = 0; lid < NPC_MAX_LID; lid++) {
  for (lt = 0; lt < NPC_MAX_LT; lt++) {
   for (ld = 0; ld < NPC_MAX_LD; ld++) {
    SET_KEX_LD(NIX_INTF_RX, lid, lt, ld,
        mkex->intf_lid_lt_ld[NIX_INTF_RX]
        [lid][lt][ld]);

    SET_KEX_LD(NIX_INTF_TX, lid, lt, ld,
        mkex->intf_lid_lt_ld[NIX_INTF_TX]
        [lid][lt][ld]);
   }
  }
 }

 for (ld = 0; ld < NPC_MAX_LD; ld++) {
  for (fl = 0; fl < NPC_MAX_LFL; fl++) {
   SET_KEX_LDFLAGS(NIX_INTF_RX, ld, fl,
     mkex->intf_ld_flags[NIX_INTF_RX]
     [ld][fl]);

   SET_KEX_LDFLAGS(NIX_INTF_TX, ld, fl,
     mkex->intf_ld_flags[NIX_INTF_TX]
     [ld][fl]);
  }
 }
}
