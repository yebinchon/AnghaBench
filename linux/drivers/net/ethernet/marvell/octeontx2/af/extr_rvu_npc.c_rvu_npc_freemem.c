
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rvu {TYPE_1__* hw; } ;
struct TYPE_5__ {int bmap; } ;
struct npc_pkind {TYPE_2__ rsrc; } ;
struct TYPE_6__ {int bmap; } ;
struct npc_mcam {int lock; TYPE_3__ counters; } ;
struct TYPE_4__ {struct npc_mcam mcam; struct npc_pkind pkind; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;

void rvu_npc_freemem(struct rvu *rvu)
{
 struct npc_pkind *pkind = &rvu->hw->pkind;
 struct npc_mcam *mcam = &rvu->hw->mcam;

 kfree(pkind->rsrc.bmap);
 kfree(mcam->counters.bmap);
 mutex_destroy(&mcam->lock);
}
