
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_cid_acquired_map {void* max_count; void* start_cid; int cid_map; } ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (void*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*,void*,void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_MSG_CXT ;
 int kzalloc (void*,int ) ;

__attribute__((used)) static int
qed_cid_map_alloc_single(struct qed_hwfn *p_hwfn,
    u32 type,
    u32 cid_start,
    u32 cid_count, struct qed_cid_acquired_map *p_map)
{
 u32 size;

 if (!cid_count)
  return 0;

 size = DIV_ROUND_UP(cid_count,
       sizeof(unsigned long) * BITS_PER_BYTE) *
        sizeof(unsigned long);
 p_map->cid_map = kzalloc(size, GFP_KERNEL);
 if (!p_map->cid_map)
  return -ENOMEM;

 p_map->max_count = cid_count;
 p_map->start_cid = cid_start;

 DP_VERBOSE(p_hwfn, QED_MSG_CXT,
     "Type %08x start: %08x count %08x\n",
     type, p_map->start_cid, p_map->max_count);

 return 0;
}
