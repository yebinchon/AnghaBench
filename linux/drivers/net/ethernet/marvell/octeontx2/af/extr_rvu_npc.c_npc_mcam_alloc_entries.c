
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct npc_mcam_alloc_entry_rsp {int count; int entry; int* entry_list; int free_count; } ;
struct npc_mcam_alloc_entry_req {scalar_t__ priority; int count; int ref_entry; scalar_t__ contig; } ;
struct npc_mcam {int bmap_fcnt; unsigned long* bmap; int lprio_start; int bmap_entries; int hprio_end; int lprio_count; unsigned long* bmap_reverse; int* entry2pfvf_map; int lock; int * entry2cntr_map; } ;


 int NPC_MAX_NONCONTIG_ENTRIES ;
 int NPC_MCAM_ALLOC_FAILED ;
 scalar_t__ NPC_MCAM_HIGHER_PRIO ;
 int NPC_MCAM_INVALID_MAP ;
 scalar_t__ NPC_MCAM_LOWER_PRIO ;
 int find_next_zero_bit (unsigned long*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_get_mcam_search_range_priority (struct npc_mcam*,struct npc_mcam_alloc_entry_req*,int*,int*,int*) ;
 int npc_mcam_find_zero_area (unsigned long*,int,int,int,int*) ;
 int npc_mcam_get_free_count (unsigned long*,int,int) ;
 int npc_mcam_set_bit (struct npc_mcam*,int) ;

__attribute__((used)) static int npc_mcam_alloc_entries(struct npc_mcam *mcam, u16 pcifunc,
      struct npc_mcam_alloc_entry_req *req,
      struct npc_mcam_alloc_entry_rsp *rsp)
{
 u16 entry_list[NPC_MAX_NONCONTIG_ENTRIES];
 u16 fcnt, hp_fcnt, lp_fcnt;
 u16 start, end, index;
 int entry, next_start;
 bool reverse = 0;
 unsigned long *bmap;
 u16 max_contig;

 mutex_lock(&mcam->lock);


 if (!mcam->bmap_fcnt) {
  mutex_unlock(&mcam->lock);
  return NPC_MCAM_ALLOC_FAILED;
 }
 if (req->priority) {
  npc_get_mcam_search_range_priority(mcam, req,
         &start, &end, &reverse);
  goto alloc;
 }





 lp_fcnt = npc_mcam_get_free_count(mcam->bmap,
       mcam->lprio_start,
       mcam->bmap_entries);
 hp_fcnt = npc_mcam_get_free_count(mcam->bmap, 0, mcam->hprio_end);
 fcnt = mcam->bmap_fcnt - lp_fcnt - hp_fcnt;


 if (fcnt > req->count) {
  start = mcam->hprio_end;
  end = mcam->lprio_start;
 } else if ((fcnt + (hp_fcnt / 2) + (lp_fcnt / 2)) > req->count) {



  start = mcam->hprio_end / 2;
  end = mcam->bmap_entries - (mcam->lprio_count / 2);
  reverse = 1;
 } else {



  reverse = 1;
  start = 0;
  end = mcam->bmap_entries;
 }

alloc:
 if (reverse) {
  bmap = mcam->bmap_reverse;
  start = mcam->bmap_entries - start;
  end = mcam->bmap_entries - end;
  index = start;
  start = end;
  end = index;
 } else {
  bmap = mcam->bmap;
 }

 if (req->contig) {



  index = npc_mcam_find_zero_area(bmap, end, start,
      req->count, &max_contig);
  rsp->count = max_contig;
  if (reverse)
   rsp->entry = mcam->bmap_entries - index - max_contig;
  else
   rsp->entry = index;
 } else {



  rsp->count = 0;
  next_start = start;
  for (entry = 0; entry < req->count; entry++) {
   index = find_next_zero_bit(bmap, end, next_start);
   if (index >= end)
    break;

   next_start = start + (index - start) + 1;


   if (reverse)
    index = mcam->bmap_entries - index - 1;
   entry_list[entry] = index;
   rsp->count++;
  }
 }




 if (!req->priority && (rsp->count < req->count) &&
     ((end - start) != mcam->bmap_entries)) {
  reverse = 1;
  start = 0;
  end = mcam->bmap_entries;
  goto alloc;
 }




 if (req->priority && rsp->count < req->count) {
  if (req->priority == NPC_MCAM_LOWER_PRIO &&
      (start != (req->ref_entry + 1))) {
   start = req->ref_entry + 1;
   end = mcam->bmap_entries;
   reverse = 0;
   goto alloc;
  } else if ((req->priority == NPC_MCAM_HIGHER_PRIO) &&
      ((end - start) != req->ref_entry)) {
   start = 0;
   end = req->ref_entry;
   reverse = 1;
   goto alloc;
  }
 }





 if (!req->contig && rsp->count) {
  index = 0;
  for (entry = rsp->count - 1; entry >= 0; entry--) {
   if (reverse)
    rsp->entry_list[index++] = entry_list[entry];
   else
    rsp->entry_list[entry] = entry_list[entry];
  }
 }


 for (entry = 0; entry < rsp->count; entry++) {
  index = req->contig ?
   (rsp->entry + entry) : rsp->entry_list[entry];
  npc_mcam_set_bit(mcam, index);
  mcam->entry2pfvf_map[index] = pcifunc;
  mcam->entry2cntr_map[index] = NPC_MCAM_INVALID_MAP;
 }


 rsp->free_count = mcam->bmap_fcnt;

 mutex_unlock(&mcam->lock);
 return 0;
}
