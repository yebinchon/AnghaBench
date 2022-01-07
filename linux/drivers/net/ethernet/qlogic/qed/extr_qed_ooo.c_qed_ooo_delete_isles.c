
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_ooo_isle {int list_entry; int buffers_list; } ;
struct qed_ooo_info {int free_isles_list; int cur_isles_number; int free_buffers_list; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;
 struct qed_ooo_isle* qed_ooo_seek_isle (struct qed_hwfn*,struct qed_ooo_info*,int ,scalar_t__) ;

void qed_ooo_delete_isles(struct qed_hwfn *p_hwfn,
     struct qed_ooo_info *p_ooo_info,
     u32 cid, u8 drop_isle, u8 drop_size)
{
 struct qed_ooo_isle *p_isle = ((void*)0);
 u8 isle_idx;

 for (isle_idx = 0; isle_idx < drop_size; isle_idx++) {
  p_isle = qed_ooo_seek_isle(p_hwfn, p_ooo_info, cid, drop_isle);
  if (!p_isle) {
   DP_NOTICE(p_hwfn,
      "Isle %d is not found(cid %d)\n",
      drop_isle, cid);
   return;
  }
  if (list_empty(&p_isle->buffers_list))
   DP_NOTICE(p_hwfn,
      "Isle %d is empty(cid %d)\n", drop_isle, cid);
  else
   list_splice_tail_init(&p_isle->buffers_list,
           &p_ooo_info->free_buffers_list);

  list_del(&p_isle->list_entry);
  p_ooo_info->cur_isles_number--;
  list_add(&p_isle->list_entry, &p_ooo_info->free_isles_list);
 }
}
