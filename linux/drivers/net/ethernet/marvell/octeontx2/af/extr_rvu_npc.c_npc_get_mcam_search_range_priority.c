
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct npc_mcam_alloc_entry_req {scalar_t__ priority; scalar_t__ ref_entry; scalar_t__ count; } ;
struct npc_mcam {scalar_t__ bmap_entries; scalar_t__ hprio_end; scalar_t__ lprio_start; int bmap; } ;


 scalar_t__ NPC_MCAM_HIGHER_PRIO ;
 scalar_t__ npc_mcam_get_free_count (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
npc_get_mcam_search_range_priority(struct npc_mcam *mcam,
       struct npc_mcam_alloc_entry_req *req,
       u16 *start, u16 *end, bool *reverse)
{
 u16 fcnt;

 if (req->priority == NPC_MCAM_HIGHER_PRIO)
  goto hprio;
 *reverse = 0;
 *start = req->ref_entry + 1;
 *end = mcam->bmap_entries;

 if (req->ref_entry >= mcam->hprio_end)
  return;

 fcnt = npc_mcam_get_free_count(mcam->bmap,
           mcam->hprio_end, mcam->bmap_entries);
 if (fcnt > req->count)
  *start = mcam->hprio_end;
 else
  *reverse = 1;
 return;

hprio:
 *reverse = 1;
 *start = 0;
 *end = req->ref_entry;

 if (req->ref_entry <= mcam->lprio_start)
  return;

 fcnt = npc_mcam_get_free_count(mcam->bmap,
           mcam->hprio_end, mcam->lprio_start);
 if (fcnt < req->count)
  return;
 *start = mcam->hprio_end;
 *end = mcam->lprio_start;
}
