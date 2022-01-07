
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_bmap {scalar_t__ max_count; int name; int bitmap; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,scalar_t__) ;
 int EINVAL ;
 int QED_MSG_RDMA ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

int qed_rdma_bmap_alloc_id(struct qed_hwfn *p_hwfn,
      struct qed_bmap *bmap, u32 *id_num)
{
 *id_num = find_first_zero_bit(bmap->bitmap, bmap->max_count);
 if (*id_num >= bmap->max_count)
  return -EINVAL;

 __set_bit(*id_num, bmap->bitmap);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "%s bitmap: allocated id %d\n",
     bmap->name, *id_num);

 return 0;
}
