
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int max; } ;
struct npc_mcam {scalar_t__* cntr2pfvf_map; TYPE_1__ counters; } ;


 int NPC_MCAM_INVALID_REQ ;
 int NPC_MCAM_PERM_DENIED ;

__attribute__((used)) static int npc_mcam_verify_counter(struct npc_mcam *mcam,
       u16 pcifunc, int cntr)
{



 if (cntr >= mcam->counters.max)
  return NPC_MCAM_INVALID_REQ;

 if (pcifunc != mcam->cntr2pfvf_map[cntr])
  return NPC_MCAM_PERM_DENIED;

 return 0;
}
