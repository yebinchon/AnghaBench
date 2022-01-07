
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;


 int BLKADDR_CPT0 ;
 int BLKADDR_NDC0 ;
 int BLKADDR_NDC1 ;
 int BLKADDR_NDC2 ;
 int BLKADDR_NIX0 ;
 int BLKADDR_NPA ;
 int BLKADDR_NPC ;
 int BLKADDR_SSO ;
 int BLKADDR_TIM ;
 int CPT_AF_BLK_RST ;
 int NDC_AF_BLK_RST ;
 int NIX_AF_BLK_RST ;
 int NPA_AF_BLK_RST ;
 int NPC_AF_BLK_RST ;
 int SSO_AF_BLK_RST ;
 int TIM_AF_BLK_RST ;
 int rvu_block_reset (struct rvu*,int ,int ) ;

__attribute__((used)) static void rvu_reset_all_blocks(struct rvu *rvu)
{

 rvu_block_reset(rvu, BLKADDR_NPA, NPA_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_NIX0, NIX_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_NPC, NPC_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_SSO, SSO_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_TIM, TIM_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_CPT0, CPT_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_NDC0, NDC_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_NDC1, NDC_AF_BLK_RST);
 rvu_block_reset(rvu, BLKADDR_NDC2, NDC_AF_BLK_RST);
}
