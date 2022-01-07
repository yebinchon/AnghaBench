
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int lock; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_mcam_free_all_counters (struct rvu*,struct npc_mcam*,int ) ;
 int npc_mcam_free_all_entries (struct rvu*,struct npc_mcam*,int,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_npc_disable_default_entries (struct rvu*,int ,int) ;

void rvu_npc_disable_mcam_entries(struct rvu *rvu, u16 pcifunc, int nixlf)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return;

 mutex_lock(&mcam->lock);


 npc_mcam_free_all_entries(rvu, mcam, blkaddr, pcifunc);


 npc_mcam_free_all_counters(rvu, mcam, pcifunc);

 mutex_unlock(&mcam->lock);

 rvu_npc_disable_default_entries(rvu, pcifunc, nixlf);
}
