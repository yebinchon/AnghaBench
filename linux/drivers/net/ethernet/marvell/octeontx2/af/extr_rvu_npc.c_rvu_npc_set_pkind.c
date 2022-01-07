
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu_pfvf {int dummy; } ;
struct rvu {int dummy; } ;


 int BLKTYPE_NPC ;
 int NPC_AF_PKINDX_CPI_DEFX (int,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

void rvu_npc_set_pkind(struct rvu *rvu, int pkind, struct rvu_pfvf *pfvf)
{
 int blkaddr;
 u64 val = 0;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return;


 val = pkind | 1ULL << 62;
 rvu_write64(rvu, blkaddr, NPC_AF_PKINDX_CPI_DEFX(pkind, 0), val);
}
