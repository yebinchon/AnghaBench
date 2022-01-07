
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {scalar_t__ keysize; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;


 int KEX_LD_CFG (int,int,int,int,int) ;
 int NIX_INTF_RX ;
 int NIX_INTF_TX ;
 int NPC_AF_CONST ;
 int NPC_LID_LA ;
 int NPC_LID_LB ;
 int NPC_LID_LC ;
 int NPC_LID_LD ;
 int NPC_LT_LA_ETHER ;
 int NPC_LT_LB_CTAG ;
 int NPC_LT_LB_QINQ ;
 int NPC_LT_LB_STAG ;
 int NPC_LT_LC_IP ;
 int NPC_LT_LD_TCP ;
 int NPC_LT_LD_UDP ;
 scalar_t__ NPC_MCAM_KEY_X2 ;
 int NPC_PARSE_RESULT_DMAC_OFFSET ;
 int SET_KEX_LD (int ,int,int,int,int) ;
 int SET_KEX_LDFLAGS (int ,int,int,unsigned long long) ;
 int rvu_read64 (struct rvu*,int,int ) ;

__attribute__((used)) static void npc_config_ldata_extract(struct rvu *rvu, int blkaddr)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 int lid, ltype;
 int lid_count;
 u64 cfg;

 cfg = rvu_read64(rvu, blkaddr, NPC_AF_CONST);
 lid_count = (cfg >> 4) & 0xF;




 for (lid = 0; lid < lid_count; lid++) {
  for (ltype = 0; ltype < 16; ltype++) {
   SET_KEX_LD(NIX_INTF_RX, lid, ltype, 0, 0ULL);
   SET_KEX_LD(NIX_INTF_RX, lid, ltype, 1, 0ULL);
   SET_KEX_LD(NIX_INTF_TX, lid, ltype, 0, 0ULL);
   SET_KEX_LD(NIX_INTF_TX, lid, ltype, 1, 0ULL);

   SET_KEX_LDFLAGS(NIX_INTF_RX, 0, ltype, 0ULL);
   SET_KEX_LDFLAGS(NIX_INTF_RX, 1, ltype, 0ULL);
   SET_KEX_LDFLAGS(NIX_INTF_TX, 0, ltype, 0ULL);
   SET_KEX_LDFLAGS(NIX_INTF_TX, 1, ltype, 0ULL);
  }
 }

 if (mcam->keysize != NPC_MCAM_KEY_X2)
  return;





 cfg = KEX_LD_CFG(0x05, 0x0, 0x1, 0x0, NPC_PARSE_RESULT_DMAC_OFFSET);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LA, NPC_LT_LA_ETHER, 0, cfg);


 cfg = KEX_LD_CFG(0x01, 0xc, 0x1, 0x0, 0x4);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LA, NPC_LT_LA_ETHER, 1, cfg);



 cfg = KEX_LD_CFG(0x03, 0x0, 0x1, 0x0, 0x4);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LB, NPC_LT_LB_CTAG, 0, cfg);



 cfg = KEX_LD_CFG(0x03, 0x4, 0x1, 0x0, 0x4);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LB, NPC_LT_LB_STAG, 0, cfg);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LB, NPC_LT_LB_QINQ, 0, cfg);



 cfg = KEX_LD_CFG(0x07, 0xc, 0x1, 0x0, 0x10);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LC, NPC_LT_LC_IP, 0, cfg);

 cfg = KEX_LD_CFG(0x0, 0x1, 0x1, 0x0, 0xf);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LC, NPC_LT_LC_IP, 1, cfg);



 cfg = KEX_LD_CFG(0x1, 0x0, 0x1, 0x0, 0x18);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LD, NPC_LT_LD_UDP, 0, cfg);

 cfg = KEX_LD_CFG(0x1, 0x2, 0x1, 0x0, 0x1a);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LD, NPC_LT_LD_UDP, 1, cfg);



 cfg = KEX_LD_CFG(0x1, 0x0, 0x1, 0x0, 0x18);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LD, NPC_LT_LD_TCP, 0, cfg);

 cfg = KEX_LD_CFG(0x1, 0x2, 0x1, 0x0, 0x1a);
 SET_KEX_LD(NIX_INTF_RX, NPC_LID_LD, NPC_LT_LD_TCP, 1, cfg);
}
