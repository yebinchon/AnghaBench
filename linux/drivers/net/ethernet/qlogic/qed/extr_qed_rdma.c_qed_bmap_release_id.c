
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_bmap {scalar_t__ max_count; int name; int bitmap; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,scalar_t__) ;
 int QED_MSG_RDMA ;
 int test_and_clear_bit (scalar_t__,int ) ;

void qed_bmap_release_id(struct qed_hwfn *p_hwfn,
    struct qed_bmap *bmap, u32 id_num)
{
 bool b_acquired;

 if (id_num >= bmap->max_count)
  return;

 b_acquired = test_and_clear_bit(id_num, bmap->bitmap);
 if (!b_acquired) {
  DP_NOTICE(p_hwfn, "%s bitmap: id %d already released\n",
     bmap->name, id_num);
  return;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "%s bitmap: released id %d\n",
     bmap->name, id_num);
}
