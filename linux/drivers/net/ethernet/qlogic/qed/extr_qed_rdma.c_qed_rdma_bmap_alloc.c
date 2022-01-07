
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_bmap {int name; int bitmap; int max_count; } ;


 int BITS_TO_LONGS (int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_MSG_RDMA ;
 int QED_RDMA_MAX_BMAP_NAME ;
 int kcalloc (int ,int,int ) ;
 int snprintf (int ,int ,char*,char*) ;

int qed_rdma_bmap_alloc(struct qed_hwfn *p_hwfn,
   struct qed_bmap *bmap, u32 max_count, char *name)
{
 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "max_count = %08x\n", max_count);

 bmap->max_count = max_count;

 bmap->bitmap = kcalloc(BITS_TO_LONGS(max_count), sizeof(long),
          GFP_KERNEL);
 if (!bmap->bitmap)
  return -ENOMEM;

 snprintf(bmap->name, QED_RDMA_MAX_BMAP_NAME, "%s", name);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "0\n");
 return 0;
}
