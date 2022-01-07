
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu {int dev; TYPE_1__* hw; } ;
struct TYPE_4__ {int max; int bmap; } ;
struct npc_mcam {int banks; int banksize; int total_entries; int keysize; int banks_per_entry; int bmap_entries; int nixlf_offset; int pf_offset; int bmap_fcnt; int lprio_count; int lprio_start; int hprio_count; int hprio_end; TYPE_2__ counters; int lock; void* cntr_refcnt; void* entry2cntr_map; void* cntr2pfvf_map; void* entry2pfvf_map; void* bmap_reverse; void* bmap; } ;
struct TYPE_3__ {int total_pfs; struct npc_mcam mcam; } ;


 int BITS_PER_LONG ;
 int BITS_TO_LONGS (int) ;
 int BIT_ULL (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NPC_AF_CONST ;
 int NPC_AF_INTFX_KEX_CFG (int ) ;
 int NPC_MCAM_KEY_X2 ;
 int NPC_MCAM_KEY_X4 ;
 int RSVD_MCAM_ENTRIES_PER_NIXLF ;
 int RSVD_MCAM_ENTRIES_PER_PF ;
 int dev_warn (int ,char*,int) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int kfree (int ) ;
 int mutex_init (int *) ;
 int round_down (int,int) ;
 int rvu_alloc_bitmap (TYPE_2__*) ;
 int rvu_get_nixlf_count (struct rvu*) ;
 int rvu_read64 (struct rvu*,int,int ) ;

__attribute__((used)) static int npc_mcam_rsrcs_init(struct rvu *rvu, int blkaddr)
{
 int nixlf_count = rvu_get_nixlf_count(rvu);
 struct npc_mcam *mcam = &rvu->hw->mcam;
 int rsvd, err;
 u64 cfg;


 cfg = rvu_read64(rvu, blkaddr, NPC_AF_CONST);
 mcam->banks = (cfg >> 44) & 0xF;
 mcam->banksize = (cfg >> 28) & 0xFFFF;
 mcam->counters.max = (cfg >> 48) & 0xFFFF;


 cfg = (rvu_read64(rvu, blkaddr,
     NPC_AF_INTFX_KEX_CFG(0)) >> 32) & 0x07;
 mcam->total_entries = (mcam->banks / BIT_ULL(cfg)) * mcam->banksize;
 mcam->keysize = cfg;


 if (cfg == NPC_MCAM_KEY_X4)
  mcam->banks_per_entry = 4;
 else if (cfg == NPC_MCAM_KEY_X2)
  mcam->banks_per_entry = 2;
 else
  mcam->banks_per_entry = 1;
 rsvd = (nixlf_count * RSVD_MCAM_ENTRIES_PER_NIXLF) +
  ((rvu->hw->total_pfs - 1) * RSVD_MCAM_ENTRIES_PER_PF);
 if (mcam->total_entries <= rsvd) {
  dev_warn(rvu->dev,
    "Insufficient NPC MCAM size %d for pkt I/O, exiting\n",
    mcam->total_entries);
  return -ENOMEM;
 }

 mcam->bmap_entries = mcam->total_entries - rsvd;
 mcam->nixlf_offset = mcam->bmap_entries;
 mcam->pf_offset = mcam->nixlf_offset + nixlf_count;


 mcam->bmap = devm_kcalloc(rvu->dev, BITS_TO_LONGS(mcam->bmap_entries),
      sizeof(long), GFP_KERNEL);
 if (!mcam->bmap)
  return -ENOMEM;

 mcam->bmap_reverse = devm_kcalloc(rvu->dev,
       BITS_TO_LONGS(mcam->bmap_entries),
       sizeof(long), GFP_KERNEL);
 if (!mcam->bmap_reverse)
  return -ENOMEM;

 mcam->bmap_fcnt = mcam->bmap_entries;


 mcam->entry2pfvf_map = devm_kcalloc(rvu->dev, mcam->bmap_entries,
         sizeof(u16), GFP_KERNEL);
 if (!mcam->entry2pfvf_map)
  return -ENOMEM;





 mcam->lprio_count = mcam->bmap_entries / 8;
 if (mcam->lprio_count > BITS_PER_LONG)
  mcam->lprio_count = round_down(mcam->lprio_count,
            BITS_PER_LONG);
 mcam->lprio_start = mcam->bmap_entries - mcam->lprio_count;
 mcam->hprio_count = mcam->lprio_count;
 mcam->hprio_end = mcam->hprio_count;




 err = rvu_alloc_bitmap(&mcam->counters);
 if (err)
  return err;

 mcam->cntr2pfvf_map = devm_kcalloc(rvu->dev, mcam->counters.max,
        sizeof(u16), GFP_KERNEL);
 if (!mcam->cntr2pfvf_map)
  goto free_mem;




 mcam->entry2cntr_map = devm_kcalloc(rvu->dev, mcam->bmap_entries,
         sizeof(u16), GFP_KERNEL);
 if (!mcam->entry2cntr_map)
  goto free_mem;

 mcam->cntr_refcnt = devm_kcalloc(rvu->dev, mcam->counters.max,
      sizeof(u16), GFP_KERNEL);
 if (!mcam->cntr_refcnt)
  goto free_mem;

 mutex_init(&mcam->lock);

 return 0;

free_mem:
 kfree(mcam->counters.bmap);
 return -ENOMEM;
}
