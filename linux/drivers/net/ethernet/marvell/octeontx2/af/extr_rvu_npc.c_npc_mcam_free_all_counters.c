
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {size_t max; } ;
struct npc_mcam {size_t* cntr2pfvf_map; TYPE_1__ counters; scalar_t__* cntr_refcnt; } ;


 size_t NPC_MCAM_INVALID_MAP ;
 int rvu_free_rsrc (TYPE_1__*,size_t) ;

__attribute__((used)) static void npc_mcam_free_all_counters(struct rvu *rvu, struct npc_mcam *mcam,
           u16 pcifunc)
{
 u16 cntr;


 for (cntr = 0; cntr < mcam->counters.max; cntr++) {
  if (mcam->cntr2pfvf_map[cntr] == pcifunc) {
   mcam->cntr2pfvf_map[cntr] = NPC_MCAM_INVALID_MAP;
   mcam->cntr_refcnt[cntr] = 0;
   rvu_free_rsrc(&mcam->counters, cntr);





  }
 }
}
