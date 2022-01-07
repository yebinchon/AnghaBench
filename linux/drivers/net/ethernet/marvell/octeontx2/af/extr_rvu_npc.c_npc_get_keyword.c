
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mcam_entry {int* kw; int* kw_mask; } ;


 int CAM_MASK (int) ;

__attribute__((used)) static void npc_get_keyword(struct mcam_entry *entry, int idx,
       u64 *cam0, u64 *cam1)
{
 u64 kw_mask = 0x00;
 switch (idx) {
 case 0:

  *cam1 = entry->kw[0];
  kw_mask = entry->kw_mask[0];
  break;
 case 1:

  *cam1 = entry->kw[1] & (BIT_ULL(48) - 1);
  kw_mask = entry->kw_mask[1] & (BIT_ULL(48) - 1);
  break;
 case 2:



  *cam1 = (entry->kw[1] >> 48) & (BIT_ULL(16) - 1);
  *cam1 |= ((entry->kw[2] & (BIT_ULL(48) - 1)) << 16);
  kw_mask = (entry->kw_mask[1] >> 48) & (BIT_ULL(16) - 1);
  kw_mask |= ((entry->kw_mask[2] & (BIT_ULL(48) - 1)) << 16);
  break;
 case 3:



  *cam1 = (entry->kw[2] >> 48) & (BIT_ULL(16) - 1);
  *cam1 |= ((entry->kw[3] & (BIT_ULL(32) - 1)) << 16);
  kw_mask = (entry->kw_mask[2] >> 48) & (BIT_ULL(16) - 1);
  kw_mask |= ((entry->kw_mask[3] & (BIT_ULL(32) - 1)) << 16);
  break;
 case 4:



  *cam1 = (entry->kw[3] >> 32) & (BIT_ULL(32) - 1);
  *cam1 |= ((entry->kw[4] & (BIT_ULL(32) - 1)) << 32);
  kw_mask = (entry->kw_mask[3] >> 32) & (BIT_ULL(32) - 1);
  kw_mask |= ((entry->kw_mask[4] & (BIT_ULL(32) - 1)) << 32);
  break;
 case 5:



  *cam1 = (entry->kw[4] >> 32) & (BIT_ULL(32) - 1);
  *cam1 |= ((entry->kw[5] & (BIT_ULL(16) - 1)) << 32);
  kw_mask = (entry->kw_mask[4] >> 32) & (BIT_ULL(32) - 1);
  kw_mask |= ((entry->kw_mask[5] & (BIT_ULL(16) - 1)) << 32);
  break;
 case 6:



  *cam1 = (entry->kw[5] >> 16) & (BIT_ULL(48) - 1);
  *cam1 |= ((entry->kw[6] & (BIT_ULL(16) - 1)) << 48);
  kw_mask = (entry->kw_mask[5] >> 16) & (BIT_ULL(48) - 1);
  kw_mask |= ((entry->kw_mask[6] & (BIT_ULL(16) - 1)) << 48);
  break;
 case 7:

  *cam1 = (entry->kw[6] >> 16) & (BIT_ULL(48) - 1);
  kw_mask = (entry->kw_mask[6] >> 16) & (BIT_ULL(48) - 1);
  break;
 }

 *cam1 &= kw_mask;
 *cam0 = ~*cam1 & kw_mask;
}
